.class public Lcom/android/keyguard/KeyguardWidgetCarousel;
.super Lcom/android/keyguard/KeyguardWidgetPager;
.source "KeyguardWidgetCarousel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardWidgetCarousel$1;,
        Lcom/android/keyguard/KeyguardWidgetCarousel$2;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F

.field private static MAX_SCROLL_PROGRESS:F


# instance fields
.field private mAdjacentPagesAngle:F

.field protected mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

.field mFastFadeInterpolator:Landroid/view/animation/Interpolator;

.field mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

.field mTmpTransform:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x3fa66666    # 1.3f

    sput v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    .line 35
    const v0, 0x461c4000    # 10000.0f

    sput v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->CAMERA_DISTANCE:F

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardWidgetCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardWidgetCarousel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    .line 205
    new-instance v0, Lcom/android/keyguard/KeyguardWidgetCarousel$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardWidgetCarousel$1;-><init>(Lcom/android/keyguard/KeyguardWidgetCarousel;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mFastFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 214
    new-instance v0, Lcom/android/keyguard/KeyguardWidgetCarousel$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardWidgetCarousel$2;-><init>(Lcom/android/keyguard/KeyguardWidgetCarousel;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$integer;->kg_carousel_angle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    .line 47
    return-void
.end method

.method private getTransformForPage(II[F)V
    .locals 9
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "transform"    # [F

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 193
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 194
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v0

    .line 195
    .local v0, "boundedProgress":F
    iget v6, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    neg-float v6, v6

    mul-float v4, v6, v0

    .line 196
    .local v4, "rotationY":F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 197
    .local v5, "width":I
    int-to-float v6, v5

    div-float/2addr v6, v8

    int-to-float v7, v5

    div-float/2addr v7, v8

    mul-float/2addr v7, v0

    add-float v2, v6, v7

    .line 198
    .local v2, "pivotX":F
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 200
    .local v3, "pivotY":F
    const/4 v6, 0x0

    aput v2, p3, v6

    .line 201
    const/4 v6, 0x1

    aput v3, p3, v6

    .line 202
    const/4 v6, 0x2

    aput v4, p3, v6

    .line 192
    return-void
.end method

.method private updatePageAlphaValues(I)V
    .locals 7
    .param p1, "screenCenter"    # I

    .prologue
    const/4 v6, 0x0

    .line 84
    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_0

    .line 85
    iget-object v5, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 86
    iput-object v6, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 88
    :cond_0
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mShowingInitialHints:Z

    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isPageMoving()Z

    move-result v4

    .line 89
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isReordering(Z)Z

    move-result v5

    if-nez v5, :cond_3

    .line 90
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 91
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 92
    .local v0, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getOutlineAlphaForPage(IIZ)F

    move-result v3

    .line 94
    .local v3, "outlineAlpha":F
    invoke-virtual {p0, p1, v2, v4}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getAlphaForPage(IIZ)F

    move-result v1

    .line 95
    .local v1, "contentAlpha":F
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 96
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    .line 90
    .end local v1    # "contentAlpha":F
    .end local v3    # "outlineAlpha":F
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v2    # "i":I
    :cond_2
    const/4 v4, 0x1

    .local v4, "showSidePages":Z
    goto :goto_0

    .line 83
    .end local v4    # "showSidePages":Z
    :cond_3
    return-void
.end method


# virtual methods
.method animatePagesToCarousel()V
    .locals 22

    .prologue
    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->cancel()V

    .line 228
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    .line 231
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v8

    .line 237
    .local v8, "count":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v6, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v8, :cond_3

    .line 240
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v7

    .line 241
    .local v7, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getAlphaForPage(IIZ)F

    move-result v10

    .line 242
    .local v10, "finalAlpha":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v12, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getOutlineAlphaForPage(IIZ)F

    move-result v11

    .line 243
    .local v11, "finalOutlineAlpha":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v12, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getTransformForPage(II[F)V

    .line 245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-lt v12, v0, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    if-gt v12, v0, :cond_1

    const/4 v13, 0x1

    .line 248
    .local v13, "inVisibleRange":Z
    :goto_1
    const-string/jumbo v18, "contentAlpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v10, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 249
    .local v5, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "backgroundAlpha"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v11, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 250
    .local v14, "outlineAlpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "pivotX"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    const/16 v21, 0x0

    aput v20, v19, v21

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 251
    .local v15, "pivotX":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "pivotY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    const/16 v21, 0x0

    aput v20, v19, v21

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 252
    .local v16, "pivotY":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v18, "rotationY"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [F

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mTmpTransform:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v20, v20, v21

    const/16 v21, 0x0

    aput v20, v19, v21

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 254
    .local v17, "rotationY":Landroid/animation/PropertyValuesHolder;
    if-eqz v13, :cond_2

    .line 256
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    .line 257
    const/16 v19, 0x2

    aput-object v15, v18, v19

    const/16 v19, 0x3

    aput-object v16, v18, v19

    const/16 v19, 0x4

    aput-object v17, v18, v19

    .line 256
    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 262
    .local v4, "a":Landroid/animation/ObjectAnimator;
    :goto_2
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 245
    .end local v4    # "a":Landroid/animation/ObjectAnimator;
    .end local v5    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "inVisibleRange":Z
    .end local v14    # "outlineAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "pivotX":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "pivotY":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "rotationY":Landroid/animation/PropertyValuesHolder;
    :cond_1
    const/4 v13, 0x0

    .restart local v13    # "inVisibleRange":Z
    goto/16 :goto_1

    .line 259
    .restart local v5    # "alpha":Landroid/animation/PropertyValuesHolder;
    .restart local v14    # "outlineAlpha":Landroid/animation/PropertyValuesHolder;
    .restart local v15    # "pivotX":Landroid/animation/PropertyValuesHolder;
    .restart local v16    # "pivotY":Landroid/animation/PropertyValuesHolder;
    .restart local v17    # "rotationY":Landroid/animation/PropertyValuesHolder;
    :cond_2
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v5, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    move-object/from16 v0, v18

    invoke-static {v7, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 260
    .restart local v4    # "a":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mFastFadeInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_2

    .line 265
    .end local v4    # "a":Landroid/animation/ObjectAnimator;
    .end local v5    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v10    # "finalAlpha":F
    .end local v11    # "finalOutlineAlpha":F
    .end local v13    # "inVisibleRange":Z
    .end local v14    # "outlineAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v15    # "pivotX":Landroid/animation/PropertyValuesHolder;
    .end local v16    # "pivotY":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "rotationY":Landroid/animation/PropertyValuesHolder;
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 266
    .local v9, "duration":I
    new-instance v18, Landroid/animation/AnimatorSet;

    invoke-direct/range {v18 .. v18}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    int-to-long v0, v9

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/animation/AnimatorSet;->start()V

    .line 225
    return-void
.end method

.method animatePagesToNeutral()V
    .locals 14

    .prologue
    .line 155
    iget-object v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    if-eqz v10, :cond_0

    .line 156
    iget-object v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->cancel()V

    .line 157
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v4

    .line 164
    .local v4, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 167
    invoke-virtual {p0, v6}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 168
    .local v3, "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    iget v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    add-int/lit8 v10, v10, -0x1

    if-lt v6, v10, :cond_3

    iget v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mCurrentPage:I

    add-int/lit8 v10, v10, 0x1

    if-gt v6, v10, :cond_3

    const/4 v7, 0x1

    .line 169
    .local v7, "inVisibleRange":Z
    :goto_1
    if-nez v7, :cond_1

    .line 170
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 172
    :cond_1
    const-string/jumbo v10, "contentAlpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    aput v12, v11, v13

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 173
    .local v1, "alpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v10, "backgroundAlpha"

    const/4 v11, 0x1

    new-array v11, v11, [F

    .line 174
    const v12, 0x3f19999a    # 0.6f

    const/4 v13, 0x0

    aput v12, v11, v13

    .line 173
    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 175
    .local v8, "outlineAlpha":Landroid/animation/PropertyValuesHolder;
    const-string/jumbo v10, "rotationY"

    const/4 v11, 0x1

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v11, v13

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 176
    .local v9, "rotationY":Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v9, v10, v11

    invoke-static {v3, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 177
    .local v0, "a":Landroid/animation/ObjectAnimator;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    .line 178
    if-nez v7, :cond_2

    .line 179
    iget-object v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mSlowFadeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 181
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 168
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "inVisibleRange":Z
    .end local v8    # "outlineAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v9    # "rotationY":Landroid/animation/PropertyValuesHolder;
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "inVisibleRange":Z
    goto :goto_1

    .line 184
    .end local v3    # "child":Lcom/android/keyguard/KeyguardWidgetFrame;
    .end local v7    # "inVisibleRange":Z
    :cond_4
    iget v5, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    .line 185
    .local v5, "duration":I
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    .line 186
    iget-object v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 188
    iget-object v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    int-to-long v12, v5

    invoke-virtual {v10, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 189
    iget-object v10, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mChildrenTransformsAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    .line 154
    return-void
.end method

.method public getAlphaForPage(IIZ)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "showSidePages"    # Z

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 58
    .local v1, "child":Landroid/view/View;
    if-nez v1, :cond_0

    return v6

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt p2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-gt p2, v4, :cond_1

    const/4 v2, 0x1

    .line 61
    .local v2, "inVisibleRange":Z
    :goto_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 63
    .local v3, "scrollProgress":F
    invoke-virtual {p0, p2, v3}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isOverScrollChild(IF)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 64
    return v5

    .line 60
    .end local v2    # "inVisibleRange":Z
    .end local v3    # "scrollProgress":F
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "inVisibleRange":Z
    goto :goto_0

    .line 65
    .restart local v3    # "scrollProgress":F
    :cond_2
    if-eqz p3, :cond_3

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v4

    if-ne p2, v4, :cond_5

    .line 66
    :cond_4
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 67
    sget v4, Lcom/android/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    div-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v5

    sub-float v0, v5, v4

    .line 68
    .local v0, "alpha":F
    return v0

    .line 70
    .end local v0    # "alpha":F
    :cond_5
    return v6
.end method

.method protected getMaxScrollProgress()F
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/android/keyguard/KeyguardWidgetCarousel;->MAX_SCROLL_PROGRESS:F

    return v0
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .locals 2
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "showSidePages"    # Z

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt p2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    .line 76
    .local v0, "inVisibleRange":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 77
    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v1

    return v1

    .line 75
    .end local v0    # "inVisibleRange":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "inVisibleRange":Z
    goto :goto_0

    .line 79
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method protected onEndReordering()V
    .locals 2

    .prologue
    .line 285
    invoke-super {p0}, Lcom/android/keyguard/KeyguardWidgetPager;->onEndReordering()V

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeInSecurity(I)V

    .line 284
    return-void
.end method

.method protected reorderStarting()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mViewStateManager:Lcom/android/keyguard/KeyguardViewStateManager;

    iget v1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->REORDERING_ZOOM_IN_OUT_DURATION:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardViewStateManager;->fadeOutSecurity(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->animatePagesToNeutral()V

    .line 273
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 14
    .param p1, "screenCenter"    # I

    .prologue
    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 120
    iput p1, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mScreenCenter:I

    .line 121
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardWidgetCarousel;->updatePageAlphaValues(I)V

    .line 122
    invoke-virtual {p0, v10}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isReordering(Z)Z

    move-result v9

    if-eqz v9, :cond_0

    return-void

    .line 123
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 124
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getWidgetPageAt(I)Lcom/android/keyguard/KeyguardWidgetFrame;

    move-result-object v7

    .line 125
    .local v7, "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    invoke-virtual {p0, p1, v7, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getScrollProgress(ILandroid/view/View;I)F

    move-result v6

    .line 126
    .local v6, "scrollProgress":F
    invoke-virtual {p0, p1, v7, v2}, Lcom/android/keyguard/KeyguardWidgetCarousel;->getBoundedScrollProgress(ILandroid/view/View;I)F

    move-result v1

    .line 127
    .local v1, "boundedProgress":F
    iget-object v9, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mDragView:Landroid/view/View;

    if-eq v7, v9, :cond_1

    if-nez v7, :cond_2

    .line 123
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    sget v9, Lcom/android/keyguard/KeyguardWidgetCarousel;->CAMERA_DISTANCE:F

    invoke-virtual {v7, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    .line 130
    invoke-virtual {p0, v2, v6}, Lcom/android/keyguard/KeyguardWidgetCarousel;->isOverScrollChild(IF)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 131
    sget v9, Lcom/android/keyguard/KeyguardWidgetCarousel;->OVERSCROLL_MAX_ROTATION:F

    neg-float v9, v9

    mul-float/2addr v9, v6

    invoke-virtual {v7, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 132
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpg-float v9, v6, v12

    if-gez v9, :cond_3

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v7, v11, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    .line 143
    :goto_3
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v0

    .line 146
    .local v0, "alpha":F
    cmpl-float v9, v0, v12

    if-nez v9, :cond_5

    .line 147
    const/4 v9, 0x4

    invoke-virtual {v7, v9}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .end local v0    # "alpha":F
    :cond_3
    move v9, v10

    .line 132
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v8

    .line 135
    .local v8, "width":I
    int-to-float v9, v8

    div-float/2addr v9, v13

    int-to-float v11, v8

    div-float/2addr v11, v13

    mul-float/2addr v11, v1

    add-float v3, v9, v11

    .line 136
    .local v3, "pivotX":F
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v4, v9

    .line 137
    .local v4, "pivotY":F
    iget v9, p0, Lcom/android/keyguard/KeyguardWidgetCarousel;->mAdjacentPagesAngle:F

    neg-float v9, v9

    mul-float v5, v9, v1

    .line 138
    .local v5, "rotationY":F
    invoke-virtual {v7, v3}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    .line 139
    invoke-virtual {v7, v4}, Lcom/android/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    .line 140
    invoke-virtual {v7, v5}, Lcom/android/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 141
    invoke-virtual {v7, v12, v10}, Lcom/android/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_3

    .line 148
    .end local v3    # "pivotX":F
    .end local v4    # "pivotY":F
    .end local v5    # "rotationY":F
    .end local v8    # "width":I
    .restart local v0    # "alpha":F
    :cond_5
    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 149
    invoke-virtual {v7, v10}, Lcom/android/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_1

    .line 119
    .end local v0    # "alpha":F
    .end local v1    # "boundedProgress":F
    .end local v6    # "scrollProgress":F
    .end local v7    # "v":Lcom/android/keyguard/KeyguardWidgetFrame;
    :cond_6
    return-void
.end method

.method protected zoomIn(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "onCompleteRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardWidgetCarousel;->animatePagesToCarousel()V

    .line 280
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardWidgetPager;->zoomIn(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
