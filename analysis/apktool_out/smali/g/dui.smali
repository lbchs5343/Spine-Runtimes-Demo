.class public final Lg/dui;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lg/adi;


# direct methods
.method public constructor <init>(Lg/adi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dui;->a:Lg/adi;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dui;->a:Lg/adi;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
