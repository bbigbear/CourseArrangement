package controllers

import (
	"fmt"

	"CourseArrangement/models"

	_ "github.com/GO-SQL-Driver/MySQL"
	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

type HomeController struct {
	beego.Controller
}

func (c *HomeController) Get() {

	action := c.Input().Get("action")
	fmt.Println(action)
	switch action {
	case "delete":
		fmt.Println("删除")
	case "edit":
		fmt.Println("编辑")
	case "stop":
		fmt.Println("停用")
	case "query":
		fmt.Println("查询")
	}
	c.TplName = "home.tpl"
}
func (c *HomeController) POST() {
	fmt.Println("新建")
	o := orm.NewOrm()
	courseInfo := new(models.TheoryCourse)
	courseInfo.Cid=c.Input().Get("cid")
	courseInfo.Cunit=c.Input().Get("cunit")
	courseInfo.Cname=c.Input().Get("cname")
	courseInfo.Ccg1=c.Input().Get("ccg1")
	courseInfo.Ccg2=c.Input().Get("ccg2")
	courseInfo.Cname_en=c.Input().Get("cname_en")
	courseInfo.Credit=c.Input().Get("credit")
	courseInfo.
	//插入记录
	var err error
	_, err = o.Insert(courseInfo)
	if err != nil {
		fmt.Println("新建成功")
	} else {
		fmt.Println("新建失败")
	}
}
