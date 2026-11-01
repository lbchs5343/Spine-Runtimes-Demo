.class public final Lg/ewt;
.super Lg/cux;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v4, "androidx.core.os.*"

    const-string v5, "androidx.annotation.Px"

    const-string v0, "android.support.v4.*"

    const-string v1, "android.support.v7.*"

    const-string v2, "android.support.v4.os.*"

    const-string v3, "android.support.annotation.Px"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lg/ewt;->a:Ljava/util/List;

    const-string v1, " "

    invoke-static {v1, v0}, Lg/evh;->h(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    return-void
.end method
