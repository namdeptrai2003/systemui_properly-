.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->flingTopOverscroll(FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .prologue
    .line 1273
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set9(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-set5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Z)Z

    .line 1278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$19;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->-wrap5(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V

    .line 1275
    return-void
.end method
