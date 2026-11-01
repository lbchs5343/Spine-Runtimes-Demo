.class public final Lg/grx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/emz;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/grx;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/grx;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lg/ffr;
    .locals 1

    sget-object v0, Lg/fpt;->b:Lg/ffr;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/grx;->a:Ljava/lang/String;

    return-object v0
.end method
