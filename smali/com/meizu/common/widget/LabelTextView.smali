.class public Lcom/meizu/common/widget/LabelTextView;
.super Landroid/widget/TextView;
.source "LabelTextView.java"


# instance fields
.field private mBackgroundColor:I

.field private mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mCornorRadius:I

.field private mImage:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LabelTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    sget v0, Lcom/meizu/common/R$attr;->MeizuCommon_LabelTextViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LabelTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    sget-object v1, Lcom/meizu/common/R$styleable;->LabelTextView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/meizu/common/R$styleable;->LabelTextView_mcBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$color;->mc_label_text_view_default_background_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundColor:I

    .line 58
    sget v1, Lcom/meizu/common/R$styleable;->LabelTextView_mcImage:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/LabelTextView;->mImage:Landroid/graphics/drawable/Drawable;

    .line 59
    sget v1, Lcom/meizu/common/R$styleable;->LabelTextView_mcCornorRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_label_text_view_cornor_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/LabelTextView;->mCornorRadius:I

    .line 60
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    invoke-direct {p0}, Lcom/meizu/common/widget/LabelTextView;->generateBackgroundDrawable()V

    .line 63
    iget-object v1, p0, Lcom/meizu/common/widget/LabelTextView;->mImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/LabelTextView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method

.method private generateBackgroundDrawable()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/meizu/common/widget/LabelTextView;->mCornorRadius:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 75
    iget-object v0, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/LabelTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    goto :goto_0
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundColor:I

    return v0
.end method

.method public getCornorRadius()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/meizu/common/widget/LabelTextView;->mCornorRadius:I

    return v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/meizu/common/widget/LabelTextView;->mImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/meizu/common/widget/LabelTextView;->mBackgroundColor:I

    .line 84
    invoke-direct {p0}, Lcom/meizu/common/widget/LabelTextView;->generateBackgroundDrawable()V

    .line 85
    return-void
.end method

.method public setCornorRadius(I)V
    .locals 0
    .param p1, "radius"    # I

    .prologue
    .line 92
    iput p1, p0, Lcom/meizu/common/widget/LabelTextView;->mCornorRadius:I

    .line 93
    invoke-direct {p0}, Lcom/meizu/common/widget/LabelTextView;->generateBackgroundDrawable()V

    .line 94
    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 107
    :goto_0
    return-void

    .line 103
    :cond_0
    iput-object p1, p0, Lcom/meizu/common/widget/LabelTextView;->mImage:Landroid/graphics/drawable/Drawable;

    const-string/jumbo v0, ""

    .line 104
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/LabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/LabelTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
