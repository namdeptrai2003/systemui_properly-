.class Lcom/flyme/systemui/recents/views/SwipeHelper$5;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/recents/views/SwipeHelper;->dragDownChild(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

.field final synthetic val$end:F

.field final synthetic val$start:F


# direct methods
.method constructor <init>(Lcom/flyme/systemui/recents/views/SwipeHelper;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/recents/views/SwipeHelper;
    .param p2, "val$start"    # F
    .param p3, "val$end"    # F

    .prologue
    .line 342
    iput-object p1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    iput p2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$5;->val$start:F

    iput p3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$5;->val$end:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 345
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 346
    .local v0, "f":F
    iget-object v1, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$5;->this$0:Lcom/flyme/systemui/recents/views/SwipeHelper;

    iget v2, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$5;->val$start:F

    iget v3, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$5;->val$end:F

    iget v4, p0, Lcom/flyme/systemui/recents/views/SwipeHelper$5;->val$start:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/flyme/systemui/recents/views/SwipeHelper;->-wrap0(Lcom/flyme/systemui/recents/views/SwipeHelper;F)V

    .line 344
    return-void
.end method
