.class Lcom/android/systemui/doze/DozeService$2;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeService;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeService;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuzzBeepBlinked()V
    .locals 4

    .prologue
    .line 448
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onBuzzBeepBlinked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/doze/DozeService;->-wrap10(Lcom/android/systemui/doze/DozeService;J)V

    .line 447
    return-void
.end method

.method public onNewNotifications()V
    .locals 2

    .prologue
    .line 442
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onNewNotifications (noop)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_0
    return-void
.end method

.method public onNotificationLight(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 454
    invoke-static {}, Lcom/android/systemui/doze/DozeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get12(Lcom/android/systemui/doze/DozeService;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationLight on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get6(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeService;->-set1(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 457
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get6(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-wrap9(Lcom/android/systemui/doze/DozeService;)V

    .line 453
    :cond_2
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0, p1}, Lcom/android/systemui/doze/DozeService;->-set2(Lcom/android/systemui/doze/DozeService;Z)Z

    .line 465
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get9(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-get4(Lcom/android/systemui/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/android/systemui/doze/DozeService$2;->this$0:Lcom/android/systemui/doze/DozeService;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeService;->-wrap3(Lcom/android/systemui/doze/DozeService;)V

    .line 463
    :cond_0
    return-void
.end method
