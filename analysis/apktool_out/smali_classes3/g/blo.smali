.class public final synthetic Lg/blo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bqq;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/dwp;

.field public final synthetic c:Lg/ku;


# direct methods
.method public synthetic constructor <init>(Lg/dwp;Lg/ku;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/blo;->b:Lg/dwp;

    iput-object p2, p0, Lg/blo;->c:Lg/ku;

    iput p3, p0, Lg/blo;->a:I

    return-void
.end method


# virtual methods
.method public final i()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg/blo;->b:Lg/dwp;

    iget-object v0, v0, Lg/dwp;->b:Lg/ahe;

    iget v1, p0, Lg/blo;->a:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lg/blo;->c:Lg/ku;

    invoke-virtual {v0, v3, v1, v2}, Lg/ahe;->d(Lg/ku;IZ)V

    const/4 v0, 0x0

    return-object v0
.end method
