.class Lcom/flyme/systemui/recents/views/RecentsView$6;
.super Ljava/lang/Object;
.source "RecentsView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/RecentsView;->onStartMultiClick(Lcom/flyme/systemui/recents/views/TaskStackView;Lcom/flyme/systemui/recents/views/TaskView;Lcom/flyme/systemui/recents/model/TaskStack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/RecentsView;

.field final synthetic val$animationCompeleted:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/RecentsView;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/RecentsView;
    .param p2, "val$animationCompeleted"    # Ljava/lang/Runnable;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/RecentsView$6;->this$0:Lcom/flyme/systemui/recents/views/RecentsView;

    iput-object p2, p0, Lcom/flyme/systemui/recents/views/RecentsView$6;->val$animationCompeleted:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/flyme/systemui/recents/views/RecentsView$6;->val$animationCompeleted:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 817
    return-void
.end method
