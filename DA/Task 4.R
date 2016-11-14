#Date: 2016.11.14
#File: Task 4.R
#Author: Zhang Lei & RyQ
#Mission: Run the code and complete the comment

#Setup environment
rm(list=ls())#Re-set environment
setwd('/Users/RyanQu/Documents/Workspace/R')#The workspace, change it to your path

##2.2 Simple Regression
women#Load dataset: women
fit=lm(weight~height,women);#Need to complete
fit#Need to complete
summary(fit)#Need to complete
#Need to complete: what the result means?
women$weight#Need to complete
fitted(fit)#Need to complete
#Need to complete: what the result means?
cancha=women$weight-fitted(fit)#Need to complete
cancha#Need to complete
residuals(fit)#Need to complete
#Need to complete: what the result means?
plot(women$height,women$weight,xlab='height(in inches)',ylab='weight(in pounds)')#Need to complete
abline(fit,col='brown')#Need to complete

##2.3 Polynomial Regression
#x^2
fit2=lm(weight~height+I(height^2),women)#Need to complete
summary(fit2)#Need to complete
#Need to complete: what the result means?
fitted(fit2)#Need to complete
#Need to complete: what the result means?
residuals(fit2)#Need to complete
#Need to complete: what the result means?
plot(women$height,women$weight,xlab='height(in inches)',ylab='weight(in pounds)')#Need to complete
lines(women$height,fitted(fit2),col='green')#Need to complete
#x^2  x^3
fit3=lm(weight~height+I(height^2)+I(height^3),women)#Need to complete
fitted(fit3)#Need to complete
#Need to complete: what the result means?
lines(women$height,fitted(fit3),col='red')#Need to complete
scatterplot(weight~height,data=women,spread=F,lty.smooth=2,pch=19,main='women age 30-39',xlab='height(inches)',ylab='weight(lbs.)')#Need to complete

##2.4 Multiple Regression
state.x77#Load dataset: state
states=as.data.frame(state.x77[,c('Murder','Population','Illiteracy','Income','Frost')])#Need to complete
cor(states)#Need to complete
library(car)#Load package: car #Need to complete(What the car means?)
scatterplotMatrix(states,spread=F,lty.smooth=2,main='Scatter Plot Matrix')#Need to complete
fit=lm(Murder~Population+Illiteracy+Income+Frost,states)#Need to complete
summary(fit)#Need to complete
#Need to complete: what the result means?

##2.5 Interaction in Multiple Regression
fitmtcars=lm(mpg~hp+wt+hp:wt,mtcars);#Need to complete
summary(fitmtcars)#Need to complete
#Need to complete: what the result means?
library(effects)#Load package: effects #Need to complete(What the effects means?)
plot(effect("hp:wt",fitmtcars,wt=c(2.2,3.2,4.2)),multiline=T)#plot(effect(term,mod,xlevels),multiline=T)

##3.1 Hypothesis Test
fit=lm(weight~height,women)
par(mfrow=c(2,2))#Need to complete
plot(fit)
outlierTest(fit)#Need to complete 
fit2=lm(weight~height+I(height^2),women);#Need to complete
plot(fit2)
fitmurder=lm(Murder~Population+Illiteracy+Income+Frost,states);#Need to complete
plot(fitmurder)

##3.2 Hypothesis Test: More Good Tool By 'car' Library
library(car)
###3.2.1 Normalized Test
fitmurder=lm(Murder~Population+Illiteracy+Income+Frost,data=states)#Need to complete
qqPlot(fitmurder,labels=row.names(states),simulate=T,main='Q-Q Plot')#Need to complete
outlierTest(fitmurder)#Need to complete
states['Nevada',]#Need to complete
fitted(fitmurder)['Nevada']#Need to complete
residuals(fitmurder)['Nevada']#Need to complete
rstudent(fitmurder)['Nevada']#Need to complete
###3.2.2 whether the residual is indepentdent by Durbin-Watson test
durbinWatsonTest(fitmurder)#Need to complete
###3.2.3 whether the linear relation test by crPlots
crPlots(fitmurder)#Need to complete
ncvTest(fitmurder)#Need to complete
spreadLevelPlot(fitmurder)#Need to complete

##3.3 all test by Decision Function
library(gvlma)#Load package: gvlma #Need to complete(What the gvlma means?)
gvmodel=gvlma(fitmurder);#Need to complete
summary(gvmodel)#Need to complete
#Need to complete: what the result means?

##3.4 Multicollinearity Test 
vif(fitmurder)#Need to complete
sqrt(vif(fitmurder))>2#Need to complete

##3.5 异常观测值
###3.5.1 离群点
library(car)  
outlierTest(fitmurder) 
###3.5.2 离群点高杠杆值点
#高杠杆值观测点，即是与其他预测变量有关的离群点，即它们是由许多异常的预测变量组合起来的，与响应变量值没有关系。
#高杠杆值的观测点可通过帽子统计量（hat statistic）判断。对于一个给定的数据集，帽子均值为p/n，其中p是模型估计的参数数目（包含截距项），n是样本量。一般来说，若观测点的帽子值大于帽子均值的2或3倍，则可认定为高杠杆值点
hat.plot<-function(fit){  
  p<-length(coefficients(fit))  
  n<-length(fitted(fit))  
  plot(hatvalues(fit),main="Index Plot of Hat Values")  
  abline(h=c(2,3)*p/n,col="red",lty=2)  
  identify(1:n,hatvalues(fit),names(hatvalues(fit)))  
}  
hat.plot(fitmurder) 
###3.5.3 强影响点
#强影响点，即对模型参数估计值影响有些比例失衡的点。例如，当移除 模型的一个观测点时模型会发生巨大的改变，那么需要检测一下数据中是否存在强影响点。
#检测方法Cook距离，或称为D统计量     
#Cook's D值大于4/(n-k-1)，则表明它是强影响点，其中n为样本量大小，k是预测变量数目（有助于鉴别强影响点，但并不提供关于这些点如何影响模型的信息）
#变量添加图（added variable plot）（弥补了该缺陷）（对于每个预测变量Xk，绘制Xk在其他k-1个预测变量上回归的残差值相对于响应变量在其他k-1个预测变量上回归的残差值的关系图）
cutoff=4/(nrow(states)-length(fit$coefficients)-2)  
plot(fitmurder,which=4,cook.levels=cutoff)  
abline(h=cutoff,lty=2,col="red") 
library(car)  
avPlots(fit,ask=FALSE,onepage=TRUE,id.method="identify")  
###3.5.4 将离群点、杠杆点和强影响点的信息整合到一幅图形中
library(car)  
influencePlot(fit,id.method="identify",main="Influence Plot",  
              sub="Circle size if proportional to Cook's distance")  
##纵坐标超过2或小于-2的州可被认为是离群点，
##水平轴超过0.2或0.3的州有高杠杆值（通常为预测值的组合）
##圆圈大小与影响成比例，圆圈很大的点可能是对模型估计造成的不成比例影响的强影响点。
###3.5.5改进的措施
#3.5.5.1删除观测点
#删除观测点可提高数据集对于 正态假设的拟合度，而强影响点会干扰结果，通常也会被删除。删除最大的离群点或强影响点，模型需要重新拟合，若离群点或强影响点仍然存在，重复以上过程直到获得比较满意的拟合。
#对删除观测点应持谨慎态度。
#3.5.5.2变量变换 
#当模型不符合正态性、线性或同方差性假设时，一个或多个变量的变换通常可以改善或调整模型效果。
#当模型违反了正态假设时，通常可以对响应变量尝试某种变换,eg car包中的powerTransform（）函数,Box-Cox正态变换
library(car)  
summary(powerTransform(states$Murder))  
#3.5.5.3 增删变量
#改变模型的变量会影响模型的拟合度，增加或删除变量
#多重共线问题：岭回归

##3.6 compare model and choose the best one
###3.6.1 模型比较
#way 1:anova（）函数可比较两个嵌套模型的拟合优度,嵌套模型即指它的一个些项完全包含在另一个模型中
fit1=lm(Murder~Population+Illiteracy+Income+Frost,data=states)  
fit2=lm(Murder~Population+Illiteracy,data=states)  
anova(fit2,fit1)
#模型1嵌套在模型2中，检验不显著，基础知识 不需要将Income和Frost添加到线性模型中，可将它们从模型中删除 
#way 2:AIC（Akaike Information Criterion，赤池信息准则）可用来比较模型，考虑了模型的统计拟合度及用来拟合的参数数目,AIC小的模型要优先选择
#AIC值越小的模型要优行选择，说明模型用较少的参数获得了足够的拟合度
fit1=lm(Murder~Population+Illiteracy+Income+Frost,data=states)  
fit2<-lm(Murder~Population+Illiteracy,data=states)  
AIC(fit1,fit2)  
###3.6.2 variable choose:method:forward stepwise\backward stepwise\stepwise stepwise 
library(MASS)
fit1=lm(Murder~Population+Illiteracy+Income+Frost,data=states)
stepAIC(fit1,directions='backward')
###3.6.3 model choose by all-subsets regression(全局回归) by leaps package
#全子集回归，即所有可能的酣篮队支被检验，可选择展示所有可能的结果，也可展示n个不同子集大小（一个、两个或多个预测变量）的最佳模型
library(leaps)
leaps=regsubsets(Murder~Population+Illiteracy+Income+Frost,data=states,nbest=4)
plot(leaps,scale='adjr2')
#Mallows Cp统计量也用来作为逐步回归的判停规则，对于一个好的模型，它的Cp统计量非常迫近于模型的参数数目（包括截距项）
##using car package
library(car)
subsets(leaps,statistics='cp',main='Cp Plot for All Subsets Regression')
abline(1,1,lty=2,col='red')

##3.7 using regression to predict
###3.7.1交叉验证即将一定比例的数据挑选出来作为训练样本，另外的样本作为保留样本，先在训练样本上获取回归方程，然后在保留样本上做预测。 由于保留样本不涉及模型及参数的选择，该样本可获得比新数据更为精确的估计。
#k重交叉难中，样本被分为k个子样本，轮流将k-1个子样本组合作为训练集，另外1个子样本作为保留集，这样会获得k个预测方程，记录k个保留样本的预测表现结果，然后求其平均值。【当n是观测总数目，k为n时，该方法又称作刀切法（jackknifing）】
#bootstrap包中的crossval（）函数可实现k重交叉验证 
library(bootstrap)  
shrinkage<-function(fit,k=10){  
  require(bootstrap)  
  theta.fit<-function(x,y){lsfit(x,y)}  
  theta.predict<-function(fit,x){cbind(1,x)%*%fit$coef}  
  x<-fit$model[,2:ncol(fit$model)]  
  y<-fit$model[,1]  
  results<-crossval(x,y,theta.fit,theta.predict,ngroup=k)  
  r2<-cor(y,fit$fitted.values)^2  
  r2cv<-cor(y,results$cv.fit)^2  
  cat("Original R-square=",r2,"\n")  
  cat(k,"Fold Cross-Validated R-square=",r2cv,"\n")  
  cat("Change=",r2-r2cv,"\n")  
}  
fit<-lm(Murder~Population+Income+Illiteracy+Frost,data=states)  
shrinkage(fit)  
fit2<-lm(Murder~Population+Illiteracy,data=states)  
shrinkage(fit2)  
###3.7.2 which factor is most important?
zstates=as.data.frame(scale(states))
zfit=lm(Murder~Population+Illiteracy+Income+Frost,data=zstates)
coef(zfit)
#相对权重：是对所有可能子模型添加一个预测变量引起的R平方均增加量的一个近似值。
relweights<-function(fit,......){  
  R<-cor(fit$model)  
  nvar<-ncol(R)  
  rxx<-R[2:nvar,2:nvar]  
  rxy<-R[2:nvar,1]  
  svd<-eigen(rxx)  
  evec<-svd$vectors  
  ev<-svd$values  
  delta<-diag(sqrt(ev))  
  lambda<-evec%*% delta %*%t(evec)  
  lambdasq<-lambda^2  
  beta<-solve(lambda)%*%rxy  
  rsqrare<-colSums(beta^2)  
  rawwgt<-lambdasq%*%beta^2  
  import<-(rawwgt/rsquare)*100  
  lbls<-names(fit$model[2:nvar])  
  rownames(import)<-lbls  
  colnames(import)<-"Weight"  
  barplot(t(import),names.arg=lbls,  
          ylab="% of R-Square",  
          xlab="Predictor Variables",  
          main="Relative Importance of Predictor Variables",  
          sub=paste("R-Square=",round(rsquare,digits=3)),……)  
  return(import)  
}  
fit<-lm(Murder~Population+Illiteracy+Income+Frost,data=states)  
relweights(fit,col="lightgrey") 

##3.8 logistic regression
data(Affairs,package='AER')
Affairs
summary(Affairs)
edit(Affairs)
#data transforms
Affairs$ynaffair[Affairs$affairs>0]=1
Affairs$ynaffair[Affairs$affairs==0]=0
Affairs$ynaffair=factor(Affairs$ynaffair,levels=c(0,1),labels=c('no','yes'))
table(Affairs$ynaffair)
fit.full=glm(ynaffair~gender+age+yearsmarried+children+religiousness+education+occupation+rating,data=Affairs,family=binomial())
summary(fit.full)
fit.reduced=glm(ynaffair~age+yearsmarried+religiousness+rating,data=Affairs,family=binomial())
summary(fit.reduced)
exp(coef(fit.reduced))#yearsmarried is added 1o,the affair is added 10^1.106, that is 'unclear'
#########################use predict to show the effect(unwork)
testdata=data.frame(rating=c(1,2,3,4,5),age=mean(Affairs$age),
                    yearsmarried=mean(Affairs$yearsmarried),
                    riligiousness=mean(Affairs$riligiousness))

##3.9 possion regression#记数型因变量
#THE ANALYSIS OF COUNT DATA:A GENTLE INTRODUCTION TO POISSON REGRESSIN AND ITS ATERNATIVES(2009)
data(breslow.dat,package='robust');breslow.dat#癫痫数据：Trt治疗条件，Base前八周内的基础癫痫数，sumy随机化后八周内癫痫发病数
names(breslow.dat)
fitpoisson=glm(sumY~Base+Age+Trt,data=breslow.dat,family=poisson())#在poisson中，因变量是条件均值的对数
summary(fitpoisson)
exp(coef(fitpoisson))

