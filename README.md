# Touch-ID-and-Face-ID-Logging

> 在你的應用中加入 Touch ID 和 Face ID 的生物識別來進行身份驗證的功能。

**This Medium Story link: [Swift — 玩玩 Touch ID & FaceID](https://medium.com/@JJeremy.XUE/swift-%E7%8E%A9%E7%8E%A9-touch-id-faceid-%E9%A9%97%E8%AD%89-d30be0ac803b) 驗證**

**My Medium link: <https://medium.com/@JJeremy.XUE>**

**@JJeremy.XUE**

## 前言

😂 依舊是為了案子因素來研究新的項目，這次需要為 App 加上 **Touch ID** 以及 **Face ID** 的身份驗證，加上之前沒有碰過生物辨識這塊，因此想藉由這次機會來閱讀一下官方文件，並且將其流程實作一輪，當作案子執行前的事前預習和準備。

在許多 App 應用中，常常會使用生物辨識方式，來取代原本使用密碼或是類似於密碼的機制，如此一來不需要透過複雜且繁複的輸入或是記憶成堆的密碼，使用者只需要輕鬆的透過指紋、人臉等等其他生物辨識方式，即可輕鬆的進行身份認證來訪問功能。

若沒有看過官方文檔或是其他文件，可以參考我這篇 Apple 官方文檔中關於 **LocalAuthentication** ＆ **LAContext** 的中文版本：

* [Swift — 說說 LocalAuthentication ＆ LAContext](<https://medium.com/jeremy-xue-s-blog/swift-%E8%AA%AA%E8%AA%AA-localauthentication-lacontext-fb6c8c75b27a>)

Apple 官方文檔：

* [LocalAuthentication](<https://developer.apple.com/documentation/localauthentication>)

* [LAContext](<https://developer.apple.com/documentation/localauthentication/lacontext>)

---

### DEMO

* 使用 Touch ID 登入帳戶

![image](https://github.com/JeremyXue77/Touch-ID-and-Face-ID-Logging/blob/master/Touch%20ID%20Login.gif)
