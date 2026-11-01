.class public abstract Lg/emd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final af:[D

.field public static final ag:I

.field public static final ah:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x4

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    sput-object v1, Lg/emd;->af:[D

    const/4 v1, 0x1

    invoke-static {v1}, Lg/emd;->ai(I)I

    move-result v1

    sput v1, Lg/emd;->ag:I

    invoke-static {v0}, Lg/emd;->ai(I)I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v1}, Lg/emd;->ai(I)I

    move-result v1

    const/4 v2, 0x6

    invoke-static {v2}, Lg/emd;->ai(I)I

    move-result v2

    const/4 v3, 0x7

    invoke-static {v3}, Lg/emd;->ai(I)I

    move-result v3

    const/16 v4, 0x8

    invoke-static {v4}, Lg/emd;->ai(I)I

    move-result v4

    const/16 v5, 0x9

    invoke-static {v5}, Lg/emd;->ai(I)I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lg/emd;->ah:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v7, "other"

    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "zero"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "one"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "two"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "few"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "many"

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 8
        0x3f70000000000000L    # 0.00390625
        0x3f00000000000000L    # 3.0517578125E-5
        0x3e80000000000000L
        0x3e00000000000000L    # 4.656612873077393E-10
    .end array-data
.end method

.method public static ai(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr p0, v0

    const/high16 v0, 0x1000000

    or-int/2addr p0, v0

    return p0
.end method
