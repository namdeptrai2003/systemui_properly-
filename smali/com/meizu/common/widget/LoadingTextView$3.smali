.class Lcom/meizu/common/widget/LoadingTextView$3;
.super Ljava/lang/Object;
.source "LoadingTextView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingTextView;->setupAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/LoadingTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingTextView;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingTextView$3;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 184
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 177
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView$3;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingTextView;->access$500(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 178
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView$3;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingTextView;->access$600(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 179
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 189
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView$3;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingTextView;->access$500(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingTextView$3;->this$0:Lcom/meizu/common/widget/LoadingTextView;

    invoke-static {v0}, Lcom/meizu/common/widget/LoadingTextView;->access$600(Lcom/meizu/common/widget/LoadingTextView;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    return-void
.end method
