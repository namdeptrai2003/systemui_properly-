.class Lcom/flyme/systemui/recents/RecentsWindow$10;
.super Ljava/lang/Object;
.source "RecentsWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/RecentsWindow;->dismissRecentsToHomeRaw(Z)Lcom/flyme/systemui/recents/misc/ReferenceCountedTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/RecentsWindow;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/RecentsWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/RecentsWindow;

    .prologue
    .line 622
    iput-object p1, p0, Lcom/flyme/systemui/recents/RecentsWindow$10;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 625
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;

    invoke-direct {v1}, Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/flyme/systemui/recents/RecentsWindow$10;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    iget-object v1, p0, Lcom/flyme/systemui/recents/RecentsWindow$10;->this$0:Lcom/flyme/systemui/recents/RecentsWindow;

    iget-object v1, v1, Lcom/flyme/systemui/recents/RecentsWindow;->launchHomeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/recents/RecentsWindow;->onAlphaToExitWindowWaitActivityResume(Ljava/lang/Runnable;)V

    .line 624
    return-void
.end method
