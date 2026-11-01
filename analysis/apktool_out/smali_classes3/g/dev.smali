.class public Lg/dev;
.super Lg/bke;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/fwg;Ljava/lang/Object;)V
    .locals 2

    check-cast p2, Ljava/util/Calendar;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lg/fwg;->af()Lg/fwg;

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/fwg;->p()V

    const-string v0, "year"

    invoke-virtual {p1, v0}, Lg/fwg;->o(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lg/fwg;->ac(J)V

    const-string v0, "month"

    invoke-virtual {p1, v0}, Lg/fwg;->o(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lg/fwg;->ac(J)V

    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lg/fwg;->o(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lg/fwg;->ac(J)V

    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lg/fwg;->o(Ljava/lang/String;)V

    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lg/fwg;->ac(J)V

    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lg/fwg;->o(Ljava/lang/String;)V

    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lg/fwg;->ac(J)V

    const-string v0, "second"

    invoke-virtual {p1, v0}, Lg/fwg;->o(Ljava/lang/String;)V

    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lg/fwg;->ac(J)V

    invoke-virtual {p1}, Lg/fwg;->ag()V

    return-void
.end method
