.class public Lcom/android/systemui/statusbar/stack/AnimationFilter;
.super Ljava/lang/Object;
.source "AnimationFilter.java"


# instance fields
.field animateAlpha:Z

.field animateDark:Z

.field animateDimmed:Z

.field animateHeight:Z

.field animateHideSensitive:Z

.field animateScale:Z

.field animateTopInset:Z

.field animateY:Z

.field animateZ:Z

.field darkAnimationOriginIndex:I

.field hasDarkEvent:Z

.field hasDelays:Z

.field hasGoToFullShadeEvent:Z

.field hasScreenOnEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V
    .locals 2
    .param p1, "filter"    # Lcom/android/systemui/statusbar/stack/AnimationFilter;

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 121
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 124
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 126
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 128
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 118
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 135
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 141
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 142
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    .line 145
    const/4 v0, -0x1

    .line 144
    iput v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 147
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasScreenOnEvent:Z

    .line 131
    return-void
.end method


# virtual methods
.method public animateAlpha()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateAlpha:Z

    .line 43
    return-object p0
.end method

.method public animateDark()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDark:Z

    .line 83
    return-object p0
.end method

.method public animateDimmed()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateDimmed:Z

    .line 78
    return-object p0
.end method

.method public animateHeight()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHeight:Z

    .line 68
    return-object p0
.end method

.method public animateHideSensitive()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateHideSensitive:Z

    .line 88
    return-object p0
.end method

.method public animateScale()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateScale:Z

    .line 63
    return-object p0
.end method

.method public animateTopInset()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateTopInset:Z

    .line 73
    return-object p0
.end method

.method public animateY()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateY:Z

    .line 48
    return-object p0
.end method

.method public animateZ()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->animateZ:Z

    .line 58
    return-object p0
.end method

.method public applyCombination(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;>;"
    const/4 v5, 0x1

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->reset()V

    .line 98
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 99
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 100
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    .line 101
    .local v0, "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;

    iget-object v3, v3, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->filter:Lcom/android/systemui/statusbar/stack/AnimationFilter;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/stack/AnimationFilter;->combineFilter(Lcom/android/systemui/statusbar/stack/AnimationFilter;)V

    .line 102
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 103
    const/16 v4, 0xa

    .line 102
    if-ne v3, v4, :cond_0

    .line 104
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasGoToFullShadeEvent:Z

    .line 106
    :cond_0
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    .line 107
    const/16 v4, 0x9

    .line 106
    if-ne v3, v4, :cond_1

    .line 108
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDarkEvent:Z

    .line 109
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->darkAnimationOriginIndex:I

    iput v3, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->darkAnimationOriginIndex:I

    .line 112
    :cond_1
    iget v3, v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;->animationType:I

    const/16 v4, 0xe

    if-ne v3, v4, :cond_2

    .line 113
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasScreenOnEvent:Z

    .line 99
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "ev":Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout$AnimationEvent;
    :cond_3
    return-void
.end method

.method public hasDelays()Lcom/android/systemui/statusbar/stack/AnimationFilter;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/AnimationFilter;->hasDelays:Z

    .line 53
    return-object p0
.end method
