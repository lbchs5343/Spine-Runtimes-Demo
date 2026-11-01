.class public final enum Lg/gvc;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field public static final synthetic a:[Lg/gvc;

.field public static final enum zza:Lg/gvc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/gvc;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/gvc;->zza:Lg/gvc;

    const/4 v1, 0x1

    new-array v1, v1, [Lg/gvc;

    aput-object v0, v1, v2

    sput-object v1, Lg/gvc;->a:[Lg/gvc;

    return-void
.end method

.method public static values()[Lg/gvc;
    .locals 1

    sget-object v0, Lg/gvc;->a:[Lg/gvc;

    invoke-virtual {v0}, [Lg/gvc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/gvc;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwq;->zzl(ZLjava/lang/Object;)V

    return-void
.end method
