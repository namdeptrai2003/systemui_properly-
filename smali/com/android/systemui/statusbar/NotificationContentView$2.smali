.class Lcom/android/systemui/statusbar/NotificationContentView$2;
.super Ljava/lang/Object;
.source "NotificationContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationContentView;->runSwitchAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationContentView;

.field final synthetic val$showContractedChild:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationContentView;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationContentView;
    .param p2, "val$showContractedChild"    # Z

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$showContractedChild:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->-get0(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->-get1(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->-get0(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$showContractedChild:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->-get1(Lcom/android/systemui/statusbar/NotificationContentView;)Landroid/view/View;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->val$showContractedChild:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 228
    return-void

    :cond_0
    move v0, v2

    .line 234
    goto :goto_0

    :cond_1
    move v2, v1

    .line 237
    goto :goto_1
.end method
