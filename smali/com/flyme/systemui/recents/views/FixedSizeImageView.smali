.class public Lcom/flyme/systemui/recents/views/FixedSizeImageView;
.super Landroid/widget/ImageView;
.source "FixedSizeImageView.java"


# instance fields
.field mAllowInvalidate:Z

.field mAllowRelayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/flyme/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/flyme/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/flyme/systemui/recents/views/FixedSizeImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 32
    iput-boolean v0, p0, Lcom/flyme/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 46
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 58
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/flyme/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 51
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    instance-of v1, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_3

    move-object v1, p1

    .line 67
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 68
    .local v0, "isNullBitmapDrawable":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 70
    iput-boolean v2, p0, Lcom/flyme/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 72
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/views/FixedSizeImageView;->mAllowRelayout:Z

    .line 74
    iput-boolean v3, p0, Lcom/flyme/systemui/recents/views/FixedSizeImageView;->mAllowInvalidate:Z

    .line 65
    return-void

    .line 67
    .end local v0    # "isNullBitmapDrawable":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isNullBitmapDrawable":Z
    goto :goto_0

    .line 66
    .end local v0    # "isNullBitmapDrawable":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "isNullBitmapDrawable":Z
    goto :goto_0
.end method
