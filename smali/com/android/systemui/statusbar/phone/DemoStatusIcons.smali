.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Landroid/widget/LinearLayout;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# instance fields
.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2
    .param p1, "statusIcons"    # Landroid/widget/LinearLayout;
    .param p2, "iconSize"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 42
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    .line 46
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    .line 47
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 48
    .local v0, "p":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 39
    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPkg"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 138
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v1, :cond_0

    return-void

    .line 139
    :cond_0
    const/4 v8, -0x1

    .line 140
    .local v8, "removeIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 141
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 142
    .local v9, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 143
    if-nez p3, :cond_2

    .line 144
    move v8, v7

    .line 155
    .end local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    if-nez p3, :cond_4

    .line 156
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    .line 157
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeViewAt(I)V

    .line 158
    return-void

    .line 147
    .restart local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 148
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/statusbar/StatusBarIcon;->icon:Landroid/graphics/drawable/Icon;

    .line 149
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 150
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    .line 151
    return-void

    .line 140
    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 161
    .end local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_4
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v6, "Demo"

    move-object v1, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 162
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    new-instance v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1, v10, v10}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 163
    .restart local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 165
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v4, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 137
    return-void
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 16
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v14, :cond_1

    const-string/jumbo v14, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 54
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 55
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 56
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v14, :cond_2

    const-string/jumbo v14, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 58
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 59
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 60
    const/16 v14, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto :goto_0

    .line 61
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v14, :cond_0

    const-string/jumbo v14, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 62
    const-string/jumbo v14, "volume"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 63
    .local v12, "volume":Ljava/lang/String;
    if-eqz v12, :cond_3

    .line 64
    const-string/jumbo v14, "vibrate"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    const v6, 0x7f0205de

    .line 66
    .local v6, "iconId":I
    :goto_1
    const-string/jumbo v14, "volume"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    .end local v6    # "iconId":I
    :cond_3
    const-string/jumbo v14, "zen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "zen":Ljava/lang/String;
    if-eqz v13, :cond_4

    .line 70
    const-string/jumbo v14, "important"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const v6, 0x7f020623

    .line 73
    .restart local v6    # "iconId":I
    :goto_2
    const-string/jumbo v14, "zen"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    .end local v6    # "iconId":I
    :cond_4
    const-string/jumbo v14, "bluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "bt":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 77
    const-string/jumbo v14, "disconnected"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    const v6, 0x7f020593

    .line 80
    .restart local v6    # "iconId":I
    :goto_3
    const-string/jumbo v14, "bluetooth"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .end local v6    # "iconId":I
    :cond_5
    const-string/jumbo v14, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 83
    .local v7, "location":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 84
    const-string/jumbo v14, "show"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    const v6, 0x7f0205c1

    .line 86
    .restart local v6    # "iconId":I
    :goto_4
    const-string/jumbo v14, "location"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    .end local v6    # "iconId":I
    :cond_6
    const-string/jumbo v14, "alarm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "alarm":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 90
    const-string/jumbo v14, "show"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    const v6, 0x7f02057a

    .line 92
    .restart local v6    # "iconId":I
    :goto_5
    const-string/jumbo v14, "alarm_clock"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    .end local v6    # "iconId":I
    :cond_7
    const-string/jumbo v14, "sync"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 95
    .local v10, "sync":Ljava/lang/String;
    if-eqz v10, :cond_8

    .line 96
    const-string/jumbo v14, "show"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    const v6, 0x7f0205fc

    .line 98
    .restart local v6    # "iconId":I
    :goto_6
    const-string/jumbo v14, "sync_active"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    .end local v6    # "iconId":I
    :cond_8
    const-string/jumbo v14, "tty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "tty":Ljava/lang/String;
    if-eqz v11, :cond_9

    .line 102
    const-string/jumbo v14, "show"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    const v6, 0x7f0205ff

    .line 104
    .restart local v6    # "iconId":I
    :goto_7
    const-string/jumbo v14, "tty"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    .end local v6    # "iconId":I
    :cond_9
    const-string/jumbo v14, "eri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "eri":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 108
    const-string/jumbo v14, "show"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    const v6, 0x7f0205df

    .line 110
    .restart local v6    # "iconId":I
    :goto_8
    const-string/jumbo v14, "cdma_eri"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 112
    .end local v6    # "iconId":I
    :cond_a
    const-string/jumbo v14, "mute"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "mute":Ljava/lang/String;
    if-eqz v8, :cond_b

    .line 114
    const-string/jumbo v14, "show"

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    const v6, 0x1080076

    .line 116
    .restart local v6    # "iconId":I
    :goto_9
    const-string/jumbo v14, "mute"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    .end local v6    # "iconId":I
    :cond_b
    const-string/jumbo v14, "speakerphone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 119
    .local v9, "speakerphone":Ljava/lang/String;
    if-eqz v9, :cond_c

    .line 120
    const-string/jumbo v14, "show"

    invoke-virtual {v9, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    const v6, 0x1080087

    .line 122
    .restart local v6    # "iconId":I
    :goto_a
    const-string/jumbo v14, "speakerphone"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    .end local v6    # "iconId":I
    :cond_c
    const-string/jumbo v14, "cast"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "cast":Ljava/lang/String;
    if-eqz v3, :cond_d

    .line 126
    const-string/jumbo v14, "show"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    const v6, 0x7f020592

    .line 127
    .restart local v6    # "iconId":I
    :goto_b
    const-string/jumbo v14, "cast"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    .end local v6    # "iconId":I
    :cond_d
    const-string/jumbo v14, "hotspot"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "hotspot":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 131
    const-string/jumbo v14, "show"

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    const v6, 0x7f0205c0

    .line 132
    .restart local v6    # "iconId":I
    :goto_c
    const-string/jumbo v14, "hotspot"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15, v6}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 65
    .end local v1    # "alarm":Ljava/lang/String;
    .end local v2    # "bt":Ljava/lang/String;
    .end local v3    # "cast":Ljava/lang/String;
    .end local v4    # "eri":Ljava/lang/String;
    .end local v5    # "hotspot":Ljava/lang/String;
    .end local v6    # "iconId":I
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "mute":Ljava/lang/String;
    .end local v9    # "speakerphone":Ljava/lang/String;
    .end local v10    # "sync":Ljava/lang/String;
    .end local v11    # "tty":Ljava/lang/String;
    .end local v13    # "zen":Ljava/lang/String;
    :cond_e
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_1

    .line 71
    .end local v6    # "iconId":I
    .restart local v13    # "zen":Ljava/lang/String;
    :cond_f
    const-string/jumbo v14, "none"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const v6, 0x7f020624

    .restart local v6    # "iconId":I
    goto/16 :goto_2

    .line 72
    .end local v6    # "iconId":I
    :cond_10
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_2

    .line 78
    .end local v6    # "iconId":I
    .restart local v2    # "bt":Ljava/lang/String;
    :cond_11
    const-string/jumbo v14, "connected"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    const v6, 0x7f02059e

    .restart local v6    # "iconId":I
    goto/16 :goto_3

    .line 79
    .end local v6    # "iconId":I
    :cond_12
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_3

    .line 85
    .end local v6    # "iconId":I
    .restart local v7    # "location":Ljava/lang/String;
    :cond_13
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_4

    .line 91
    .end local v6    # "iconId":I
    .restart local v1    # "alarm":Ljava/lang/String;
    :cond_14
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_5

    .line 97
    .end local v6    # "iconId":I
    .restart local v10    # "sync":Ljava/lang/String;
    :cond_15
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_6

    .line 103
    .end local v6    # "iconId":I
    .restart local v11    # "tty":Ljava/lang/String;
    :cond_16
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_7

    .line 109
    .end local v6    # "iconId":I
    .restart local v4    # "eri":Ljava/lang/String;
    :cond_17
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_8

    .line 115
    .end local v6    # "iconId":I
    .restart local v8    # "mute":Ljava/lang/String;
    :cond_18
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_9

    .line 121
    .end local v6    # "iconId":I
    .restart local v9    # "speakerphone":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto/16 :goto_a

    .line 126
    .end local v6    # "iconId":I
    .restart local v3    # "cast":Ljava/lang/String;
    :cond_1a
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto :goto_b

    .line 131
    .end local v6    # "iconId":I
    .restart local v5    # "hotspot":Ljava/lang/String;
    :cond_1b
    const/4 v6, 0x0

    .restart local v6    # "iconId":I
    goto :goto_c
.end method
