.class public Lcom/meizu/common/widget/AutoScrollListView;
.super Landroid/widget/ListView;
.source "AutoScrollListView.java"


# static fields
.field private static final PREFERRED_SELECTION_OFFSET_FROM_TOP:F = 0.33f


# instance fields
.field private mRequestedScrollPosition:I

.field private mSmoothScrollRequested:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 52
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 69
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    .line 70
    iget v6, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    if-eq v6, v7, :cond_2

    .line 74
    iget v3, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 75
    .local v3, "position":I
    iput v7, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 77
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    .line 78
    .local v0, "firstPosition":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getLastVisiblePosition()I

    move-result v1

    .line 79
    .local v1, "lastPosition":I
    if-ge v3, v0, :cond_3

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3ea8f5c3    # 0.33f

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 84
    .local v2, "offset":I
    iget-boolean v6, p0, Lcom/meizu/common/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    if-eqz v6, :cond_4

    .line 95
    sub-int v6, v1, v0

    mul-int/lit8 v5, v6, 0x2

    .line 97
    .local v5, "twoScreens":I
    if-lt v3, v0, :cond_5

    .line 107
    sub-int v4, v3, v5

    .line 108
    .local v4, "preliminaryPosition":I
    if-ltz v4, :cond_7

    .line 111
    :goto_0
    if-gt v4, v1, :cond_8

    .line 117
    :cond_1
    :goto_1
    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/widget/AutoScrollListView;->smoothScrollToPositionFromTop(II)V

    .line 119
    .end local v4    # "preliminaryPosition":I
    .end local v5    # "twoScreens":I
    :goto_2
    return-void

    .line 71
    .end local v0    # "firstPosition":I
    .end local v1    # "lastPosition":I
    .end local v2    # "offset":I
    .end local v3    # "position":I
    :cond_2
    return-void

    .line 79
    .restart local v0    # "firstPosition":I
    .restart local v1    # "lastPosition":I
    .restart local v3    # "position":I
    :cond_3
    if-gt v3, v1, :cond_0

    .line 80
    return-void

    .line 85
    .restart local v2    # "offset":I
    :cond_4
    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/widget/AutoScrollListView;->setSelectionFromTop(II)V

    .line 90
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_2

    .line 98
    .restart local v5    # "twoScreens":I
    :cond_5
    add-int v4, v3, v5

    .line 99
    .restart local v4    # "preliminaryPosition":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getCount()I

    move-result v6

    if-ge v4, v6, :cond_6

    .line 102
    :goto_3
    if-ge v4, v0, :cond_1

    .line 103
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/AutoScrollListView;->setSelection(I)V

    .line 104
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1

    .line 100
    :cond_6
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->getCount()I

    move-result v6

    add-int/lit8 v4, v6, -0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    .line 109
    goto :goto_0

    .line 112
    :cond_8
    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/AutoScrollListView;->setSelection(I)V

    .line 113
    invoke-super {p0}, Landroid/widget/ListView;->layoutChildren()V

    goto :goto_1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 123
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Lcom/meizu/common/widget/AutoScrollListView;

    .line 124
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method

.method public requestPositionToScreen(IZ)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "smoothScroll"    # Z

    .prologue
    .line 62
    iput p1, p0, Lcom/meizu/common/widget/AutoScrollListView;->mRequestedScrollPosition:I

    .line 63
    iput-boolean p2, p0, Lcom/meizu/common/widget/AutoScrollListView;->mSmoothScrollRequested:Z

    .line 64
    invoke-virtual {p0}, Lcom/meizu/common/widget/AutoScrollListView;->requestLayout()V

    .line 65
    return-void
.end method
