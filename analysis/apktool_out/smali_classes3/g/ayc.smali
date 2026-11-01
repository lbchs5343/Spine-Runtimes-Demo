.class public abstract Lg/ayc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/gzt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gzt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/gzt;-><init>(I)V

    sput-object v0, Lg/ayc;->a:Lg/gzt;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    return-void
.end method
