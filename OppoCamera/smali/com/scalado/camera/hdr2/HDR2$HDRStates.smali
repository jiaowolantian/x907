.class final enum Lcom/scalado/camera/hdr2/HDR2$HDRStates;
.super Ljava/lang/Enum;
.source "HDR2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/scalado/camera/hdr2/HDR2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "HDRStates"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/scalado/camera/hdr2/HDR2$HDRStates;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAPTURING:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

.field private static final synthetic ENUM$VALUES:[Lcom/scalado/camera/hdr2/HDR2$HDRStates;

.field public static final enum FINISHED:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

.field public static final enum READY:Lcom/scalado/camera/hdr2/HDR2$HDRStates;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/scalado/camera/hdr2/HDR2$HDRStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->READY:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    .line 91
    new-instance v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    const-string v1, "CAPTURING"

    invoke-direct {v0, v1, v3}, Lcom/scalado/camera/hdr2/HDR2$HDRStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->CAPTURING:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    .line 92
    new-instance v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v4}, Lcom/scalado/camera/hdr2/HDR2$HDRStates;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->FINISHED:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    .line 89
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    sget-object v1, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->READY:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    aput-object v1, v0, v2

    sget-object v1, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->CAPTURING:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    aput-object v1, v0, v3

    sget-object v1, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->FINISHED:Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    aput-object v1, v0, v4

    sput-object v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->ENUM$VALUES:[Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/scalado/camera/hdr2/HDR2$HDRStates;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    return-object v0
.end method

.method public static values()[Lcom/scalado/camera/hdr2/HDR2$HDRStates;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/scalado/camera/hdr2/HDR2$HDRStates;->ENUM$VALUES:[Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    array-length v1, v0

    new-array v2, v1, [Lcom/scalado/camera/hdr2/HDR2$HDRStates;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
