.class Lcom/meizu/common/widget/CircularProgressButton$1;
.super Ljava/lang/Object;
.source "CircularProgressButton.java"

# interfaces
.implements Lcom/meizu/common/widget/CircularProgressButton$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CircularProgressButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CircularProgressButton;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CircularProgressButton;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd()V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->access$002(Lcom/meizu/common/widget/CircularProgressButton;Z)Z

    .line 786
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setClickable(Z)V

    .line 788
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CircularProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/meizu/common/widget/CircularProgressButton$1;->this$0:Lcom/meizu/common/widget/CircularProgressButton;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CircularProgressButton;->requestLayout()V

    .line 791
    return-void
.end method
