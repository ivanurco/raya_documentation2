Enable the web streaming of the specified camera.

Cameras stream through a port, protocol, and path given to the user by the return tuple.

:::(Info) (Web Server)
The robot must have a default server and port established in its configuration, this configuration should only be changed for specific issues or if it is not connected to the internet and the server is a computer on an internal network.
:::

## Reference

### Arguments

| Arguments | Type | Default value | Explanation |
| --- | --- | --- | --- |
| camera_name | `str` |  | Name of the camera. |

### Return

`tuple`

| Arguments | Type | Explanation |
| --- | --- | --- |
| Port | `int`  | Server port. |
| Protocol | `str`  | Protocol used. |
| Path | `str`  | Path after server:port used to identify streaming. |

### Create local server using FFMPEG (ADVANCED)

Install [FFMPEG](https://ffmpeg.org/){target="_blank"} to create the server and receive a streaming (one camera at a time).

FFMPEG can be obtained on Ubuntu with:

```bash
sudo apt-get install ffmpeg
```

Using the following command you can create a local server on which the robot will try to send the streaming.

```bash
ffplay 'srt://<LOCAL_IP>:<PORT>?streamid=publish/?streamid=<ROBOT_ID>/<CAMERA>&mode=listener'
```

Replace LOCAL_IP with the IP visible on the same network by the robot, PORT with the port it is going to use, ROBOT_ID with the ID of the robot in question and CAMERA with the name of the camera you expect to receive from the robot.

### Exceptions

* `RayaCamerasException`
* `RayaCameraInvalidName`
* `RayaCameraAlreadyEnabled`

See the complete list of [cameras exceptions](/v2/docs/cameras-exceptions).

## Usage example

Enable streaming of 'nav_top' camera:

``` python
self.cameras: CamerasController = await self.enable_controller('cameras')
port, protocol, path = await self.cameras.enable_streaming(camera_name='nav_top')
```
