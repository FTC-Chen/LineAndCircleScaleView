# LineAndCircleScaleView
####直线与圆圈比例显示,圆圈形式中分为2种动画效果.
若需具体释义,可移步简书.http://www.jianshu.com/p/b752af66884d

一:主要实现:

(1)线形图-使用简单animateWithDuration改变frame即可.

(2)圆形图有两种形式:
1.CABasicAnimation.
2.NSTimer改变圆形path的endAngle

二:实现效果

**(1)线形图-显示比例动画**

![image](https://github.com/FTCcheV/LineAndCircleScaleView/blob/master/LineAndCircleScaleView/LineAndCircleScaleView/%E7%BA%BF%E5%BD%A2%E6%AF%94%E4%BE%8B.gif)

**(1)圆形图-CABasicAnimation显示比例动画**

![image](https://github.com/FTCcheV/LineAndCircleScaleView/blob/master/LineAndCircleScaleView/LineAndCircleScaleView/%E5%9C%86%E5%9C%88%E6%AF%94%E4%BE%8B-CABasic.gif)


**(1)圆形图-NSTimer显示比例动画**

![image](https://github.com/FTCcheV/LineAndCircleScaleView/blob/master/LineAndCircleScaleView/LineAndCircleScaleView/%E5%9C%86%E5%9C%88%E6%AF%94%E4%BE%8B-NSTimer.gif)
