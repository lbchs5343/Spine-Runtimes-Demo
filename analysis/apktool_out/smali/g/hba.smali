.class public interface abstract Lg/hba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/bjm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bjm;

    const-string v1, "PreparePass"

    invoke-direct {v0, v1}, Lg/bjm;-><init>(Ljava/lang/String;)V

    sput-object v0, Lg/hba;->a:Lg/bjm;

    return-void
.end method
