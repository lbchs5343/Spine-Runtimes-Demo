.class public final Lg/gq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cng;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field public b:Ljava/util/ArrayList;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v9, "assets"

    const-string v10, "other"

    const-string v0, "arm64-v8a"

    const-string v1, "armeabi-v7a"

    const-string v2, "armeabi"

    const-string v3, "x86_64"

    const-string v4, "x86"

    const-string v5, "mips"

    const-string v6, "mips64"

    const-string v7, "arm64"

    const-string v8, "arm"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/gq;->a:[Ljava/lang/String;

    return-void
.end method
