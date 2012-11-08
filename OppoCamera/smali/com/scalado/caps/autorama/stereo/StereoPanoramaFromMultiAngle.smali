.class public Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;
.super Lcom/scalado/caps/autorama/stereo/StereoPanorama;
.source "StereoPanoramaFromMultiAngle.java"


# instance fields
.field private stitcher:Lcom/scalado/caps/autorama/Stitcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/scalado/jni/JniLibLoaderSettings;

    invoke-direct {v0}, Lcom/scalado/jni/JniLibLoaderSettings;-><init>()V

    invoke-static {v0}, Lcom/scalado/jni/JniCommonLibLoader;->loadFromSettings(Lcom/scalado/jni/LibLoaderSettings;)V

    .line 92
    invoke-static {}, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;->nativeClassInit()V

    .line 93
    return-void
.end method

.method public constructor <init>(Lcom/scalado/caps/autorama/Stitcher;III)V
    .locals 2
    .parameter "stitcher"
    .parameter "numberOfSegments"
    .parameter "leftRenderingSegment"
    .parameter "rightRenderingSegment"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/scalado/caps/autorama/stereo/StereoPanorama;-><init>()V

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "stitcher must be allocated!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_0
    const/4 v0, 0x2

    if-ge p2, v0, :cond_1

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "numberOfSegments must be at least greater than 1!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    if-gez p4, :cond_2

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rightRenderingSegment must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_2
    if-lt p4, p2, :cond_3

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rightRenderingSegment must be < numberOfSegments!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    if-gez p3, :cond_4

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftRenderingSegment must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_4
    if-lt p3, p4, :cond_5

    .line 79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "leftRenderingSegment must be < rightRenderingSegment!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_5
    iput-object p1, p0, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;->stitcher:Lcom/scalado/caps/autorama/Stitcher;

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/scalado/caps/autorama/stereo/StereoPanoramaFromMultiAngle;->nativeCreate(Lcom/scalado/caps/autorama/Stitcher;III)V

    .line 84
    return-void
.end method

.method private static native nativeClassInit()V
.end method

.method private native nativeCreate(Lcom/scalado/caps/autorama/Stitcher;III)V
.end method
