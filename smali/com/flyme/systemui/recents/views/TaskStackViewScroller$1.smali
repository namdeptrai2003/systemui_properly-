.class Lcom/flyme/systemui/recents/views/TaskStackViewScroller$1;
.super Ljava/lang/Object;
.source "TaskStackViewScroller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->animateScroll(FFLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/TaskStackViewScroller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$1;->this$0:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 171
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/TaskStackViewScroller$1;->this$0:Lcom/flyme/systemui/recents/views/TaskStackViewScroller;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/flyme/systemui/recents/views/TaskStackViewScroller;->setStackScroll(F)V

    .line 170
    return-void
.end method
