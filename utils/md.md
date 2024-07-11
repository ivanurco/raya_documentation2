Retrieve all the predefined poses that the arm can be set to.

## Reference

### Arguments

| Argument | Type  | Description|
| --- | --- | --- |
| arm | `str` | Name of the arm whose predefined poses will be returned. |

### Return

| Type  | Description|
| --- | --- |
|`List` |  The name of each predefined pose for the specified arm.|

### Exceptions

* `RayaArmsException`
* `RayaArmsInvalidArmOrGroupName`

 See the [complete list of arms exceptions](/v2/docs/arms-exceptions){target="_blank"}

## Examples

```python
...
self.arms = self.enable_controller('arms')
...
right_arm_predefined_poses = await self.arms.get_predefined_poses_list('right_arm')
self.log.info(right_arm_predefined_poses)
...
```
  
Output:

```python
['right_arm_home', 'pre_step_1', 'pre_step_2', 'pre_step_3', 'nav_with_object0', 'nav_with_object', 'nav_with_object1', 'nav_with_object2']
```
