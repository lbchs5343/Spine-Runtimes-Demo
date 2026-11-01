package g;

import java.util.ArrayList;
import java.util.List;
import javax.net.SocketFactory;

/* loaded from: classes3.dex */
public final class gjb {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18231a;

    /* renamed from: b, reason: collision with root package name */
    public fvd f18232b;

    /* renamed from: c, reason: collision with root package name */
    public final List f18233c;

    /* renamed from: d, reason: collision with root package name */
    public final SocketFactory f18234d;

    /* renamed from: f, reason: collision with root package name */
    public dfw f18236f;
    public int i;
    public int k;
    public List l;
    public final bfy m;
    public final boolean n;
    public final ao p;
    public final gvr q;
    public int r;
    public final bfy t;
    public final bws u;
    public cop h = new cop();
    public final fc o = new fc(7);
    public final ArrayList s = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f18235e = new ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final bco f18237g = new bco(10);
    public boolean j = true;

    public gjb() {
        bfy bfyVar = bfy.l;
        this.t = bfyVar;
        this.f18231a = true;
        this.n = true;
        this.p = ao.k;
        this.f18236f = dfw.r;
        this.m = bfyVar;
        SocketFactory socketFactory = SocketFactory.getDefault();
        bff.e(socketFactory, "getDefault()");
        this.f18234d = socketFactory;
        this.f18233c = fys.f17660a;
        this.l = fys.f17661b;
        this.q = gvr.f18833a;
        this.u = bws.f12336a;
        this.k = 10000;
        this.r = 10000;
        this.i = 10000;
    }
}
