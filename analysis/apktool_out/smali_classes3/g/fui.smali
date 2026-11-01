.class public final Lg/fui;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dvf;


# static fields
.field public static final a:Lg/fui;


# instance fields
.field public final b:Lg/dvf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/fui;

    invoke-direct {v0}, Lg/fui;-><init>()V

    sput-object v0, Lg/fui;->a:Lg/fui;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Lg/hcx;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lg/abw;

    invoke-direct {v1, v0}, Lg/abw;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {v1}, Lg/baf;->bh(Lg/dvf;)Lg/dvf;

    move-result-object v0

    iput-object v0, p0, Lg/fui;->b:Lg/dvf;

    return-void
.end method

.method public static c()V
    .locals 1

    sget-object v0, Lg/fui;->a:Lg/fui;

    invoke-virtual {v0}, Lg/fui;->d()Lg/czq;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final d()Lg/czq;
    .locals 1

    iget-object v0, p0, Lg/fui;->b:Lg/dvf;

    invoke-interface {v0}, Lg/dvf;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/czq;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lg/fui;->d()Lg/czq;

    move-result-object v0

    return-object v0
.end method
