.class Lcom/android/server/AlarmManagerService$ClockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 1009
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1010
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1011
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1012
    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1013
    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1014
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1018
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1021
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mLastTimeTickMissed:Z
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$2200(Lcom/android/server/AlarmManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1022
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/AlarmManagerService;->mLastTimeTickMissed:Z
    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->access$2202(Lcom/android/server/AlarmManagerService;Z)Z

    .line 1023
    const-string v2, "AlarmManager"

    const-string v3, "receive TIME_TICK again------------------"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService;->stopDebugTimeTick()V

    .line 1029
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1040
    :cond_1
    :goto_0
    return-void

    .line 1030
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1035
    const-string v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 1036
    .local v1, zone:Ljava/util/TimeZone;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    .line 1037
    .local v0, gmtOffset:I
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)I

    move-result v3

    const v4, 0xea60

    div-int v4, v0, v4

    neg-int v4, v4

    #calls: Lcom/android/server/AlarmManagerService;->setKernelTimezone(II)I
    invoke-static {v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;II)I

    .line 1038
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    goto :goto_0
.end method

.method public scheduleDateChangedEvent()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1070
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1071
    .local v0, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1072
    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1073
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1074
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1075
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 1076
    const/4 v1, 0x5

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 1078
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;
    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2400(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v1, v5, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->set(IJLandroid/app/PendingIntent;)V

    .line 1079
    return-void
.end method

.method public scheduleTimeTickEvent()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 1043
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1044
    .local v7, calendar:Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1045
    .local v8, currentTime:J
    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1046
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 1047
    const/16 v0, 0xd

    invoke-virtual {v7, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 1048
    const/16 v0, 0xe

    invoke-virtual {v7, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 1052
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v10, v0, v8

    .line 1057
    .local v10, tickEventDelay:J
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v10

    const-wide/32 v4, 0xea60

    iget-object v6, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 1064
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$ClockReceiver;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->startDebugTimeTick()V

    .line 1067
    return-void
.end method
