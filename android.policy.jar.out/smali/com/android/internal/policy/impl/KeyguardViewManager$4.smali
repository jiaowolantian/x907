.class Lcom/android/internal/policy/impl/KeyguardViewManager$4;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/KeyguardViewManager;->hideKeyguardActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field final synthetic val$lastView:Lcom/android/internal/policy/impl/KeyguardActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardActions;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 420
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/KeyguardActions;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    monitor-enter v1

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    #getter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/view/ViewManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->val$lastView:Lcom/android/internal/policy/impl/KeyguardActions;

    invoke-interface {v0, v2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager$4;->this$0:Lcom/android/internal/policy/impl/KeyguardViewManager;

    const/4 v2, 0x0

    #setter for: Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardActions:Lcom/android/internal/policy/impl/KeyguardActions;
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewManager;->access$402(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardActions;)Lcom/android/internal/policy/impl/KeyguardActions;

    .line 425
    monitor-exit v1

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
