import os

from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import DeclareLaunchArgument
from launch_ros.actions import Node
from launch.substitutions import LaunchConfiguration


def generate_launch_description():

    limo_bringup_dir = get_package_share_directory('limo_bringup')

    slam_params = LaunchConfiguration(
        'slam_params',
        default=os.path.join(limo_bringup_dir, 'param', 'slam_params.yaml')
    )

    rviz_config = LaunchConfiguration(
        'rviz_config',
        default=os.path.join(limo_bringup_dir, 'rviz', 'slam_toolbox.rviz')
    )

    use_sim_time = LaunchConfiguration('use_sim_time', default='false')

    slam_toolbox_node = Node(
        package='slam_toolbox',
        executable='sync_slam_toolbox_node',
        name='slam_toolbox',
        output='screen',
        parameters=[slam_params, {'use_sim_time': use_sim_time}],
    )

    rviz_node = Node(
        package='rviz2',
        executable='rviz2',
        name='rviz2',
        output='screen',
        arguments=['-d', rviz_config]
    )

    return LaunchDescription([
        DeclareLaunchArgument('slam_params', default_value=slam_params),
        DeclareLaunchArgument('rviz_config', default_value=rviz_config),
        DeclareLaunchArgument('use_sim_time', default_value='false'),

        slam_toolbox_node,
        rviz_node
    ])

