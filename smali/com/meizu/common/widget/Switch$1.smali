.class Lcom/meizu/common/widget/Switch$1;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/Switch;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/Switch;)V
    .locals 0

    .prologue
    .line 1013
    iput-object p1, p0, Lcom/meizu/common/widget/Switch$1;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$1;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/meizu/common/widget/Switch;->access$000(Lcom/meizu/common/widget/Switch;F)V

    .line 1017
    return-void
.end method
