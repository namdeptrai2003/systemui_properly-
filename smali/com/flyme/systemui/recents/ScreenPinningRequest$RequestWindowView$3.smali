.class Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView$3;
.super Ljava/lang/Object;
.source "ScreenPinningRequest.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 177
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 178
    .local v0, "c":I
    iget-object v1, p0, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView$3;->this$1:Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;

    invoke-static {v1}, Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;->-get0(Lcom/flyme/systemui/recents/ScreenPinningRequest$RequestWindowView;)Landroid/graphics/drawable/ColorDrawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 176
    return-void
.end method
