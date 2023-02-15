# 100DaysOfSwiftUI

## @StateObject

**Bu özellik, bir görünümün ömrü boyunca sadece bir kez yaratılan ve yeniden kullanılan bir nesne örneğiyle ilişkilendirilir. Genellikle, bir nesne örneğinin belirli bir görünümün ömrü boyunca bir kez oluşturulmasını ve kullanılmasını istediğimizde kullanılır.**

## @ObservedObject

**Bu özellik, bir görünümün özelliklerini güncellemek için kullanılan bir nesne örneğiyle ilişkilendirilir. Bir @ObservedObject özelliği kullanan bir görünüm, özelliğe atanmış olan nesnenin özelliklerinin değişip değişmediğini sürekli olarak izler ve eğer bir değişiklik varsa görünümü yeniden oluşturur.**

## @EnvironmentObject

**Bu özellik, bir uygulamanın tüm görünümleri tarafından paylaşılan bir nesne örneğiyle ilişkilendirilir. @EnvironmentObject özelliği, Environment adlı bir yapı içindeki öğeleri kullanarak oluşturulur. Bu özellik, uygulamanın herhangi bir yerinde bulunan bir görünüm tarafından kullanılabilir ve nesne örneği değiştirilirse, nesnenin tüm kullanımları otomatik olarak güncellenir.**

--

Özetle, @StateObject bir görünümün ömrü boyunca bir kez oluşturulacak ve kullanılacak nesneler için kullanılırken, @ObservedObject ve @EnvironmentObject nesnelerin özelliklerindeki değişiklikleri izlemek ve görünümleri güncellemek için kullanılır. @ObservedObject, nesnenin belirli bir görünümle ilişkilendirilmesine karşın, @EnvironmentObject uygulamanın tüm görünümleri tarafından kullanılabilir.

