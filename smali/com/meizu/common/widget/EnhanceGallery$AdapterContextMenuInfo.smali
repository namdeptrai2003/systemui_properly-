.class public Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;
.super Ljava/lang/Object;
.source "EnhanceGallery.java"

# interfaces
.implements Landroid/view/ContextMenu$ContextMenuInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterContextMenuInfo"
.end annotation


# instance fields
.field public id:J

.field public position:I

.field public targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;IJ)V
    .locals 1
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 2670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2671
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    .line 2672
    iput p2, p0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;->position:I

    .line 2673
    iput-wide p3, p0, Lcom/meizu/common/widget/EnhanceGallery$AdapterContextMenuInfo;->id:J

    .line 2674
    return-void
.end method
