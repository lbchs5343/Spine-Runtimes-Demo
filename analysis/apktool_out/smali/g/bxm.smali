.class public final Lg/bxm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fjs;


# instance fields
.field public final synthetic a:Lg/aye;


# direct methods
.method public constructor <init>(Lg/aye;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bxm;->a:Lg/aye;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 0

    iget-object p2, p0, Lg/bxm;->a:Lg/aye;

    iput-object p1, p2, Lg/aye;->element:Ljava/lang/Object;

    new-instance p1, Lg/dia;

    invoke-direct {p1, p0}, Lg/dia;-><init>(Lg/bxm;)V

    throw p1
.end method
