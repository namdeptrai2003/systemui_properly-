.class Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;->this$1:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk$2;->this$1:Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSimPukView$CheckSimPuk;->onSimLockChangedResponse(II)V

    .line 246
    return-void
.end method
