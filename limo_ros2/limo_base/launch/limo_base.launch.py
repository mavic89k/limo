import os
import launch
import launch_ros

from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch.substitutions import LaunchConfiguration
from launch_ros.actions import Node

def generate_launch_description():

    # Declare launch arguments (정상 구조)
    declare_port_name = DeclareLaunchArgument(
        'port_name',
        default_value='ttylimo',
        description='Serial port name for LIMO, e.g. ttyUSB0 or ttylimo'
    )

    declare_odom_frame = DeclareLaunchArgument(
        'odom_frame',
        default_value='odom',
        description='Odometry frame'
    )

    declare_base_frame = DeclareLaunchArgument(
        'base_frame',
        default_value='base_link',
        description='Base link frame'
    )

    declare_odom_topic = DeclareLaunchArgument(
        'odom_topic',
        default_value='/wheel/odom',
        description='Odom topic name'
    )

    declare_pub_odom_tf = DeclareLaunchArgument(
        'pub_odom_tf',
        default_value='true',
        description='Whether to publish TF from odom to base_link'
    )

    # Load arguments into LaunchConfigurations
    port_name = LaunchConfiguration('port_name')
    odom_frame = LaunchConfiguration('odom_frame')
    base_frame = LaunchConfiguration('base_frame')
    odom_topic = LaunchConfiguration('odom_topic')
    pub_odom_tf = LaunchConfiguration('pub_odom_tf')

    # LIMO Base Node
    limo_base_node = Node(
        package='limo_base',
        executable='limo_base',
        name='limo_base_node',
        output='screen',
        emulate_tty=True,
        parameters=[{
            'port_name': port_name,
            'odom_frame': odom_frame,
            'base_frame': base_frame,
            'odom_topic': odom_topic,
            'pub_odom_tf': pub_odom_tf,
            'use_mcnamu': False
        }],
    )

    return LaunchDescription([
        declare_port_name,
        declare_odom_frame,
        declare_base_frame,
        declare_odom_topic,
        declare_pub_odom_tf,
        limo_base_node
    ])

