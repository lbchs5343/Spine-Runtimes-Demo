package g;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class cyo {

    /* renamed from: a, reason: collision with root package name */
    public long f13767a;
    public String aa;

    /* renamed from: ab, reason: collision with root package name */
    public long f13768ab;
    public long ac;
    public long ad;
    public Boolean ae;

    /* renamed from: b, reason: collision with root package name */
    public long f13769b;

    /* renamed from: c, reason: collision with root package name */
    public long f13770c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13771d;

    /* renamed from: e, reason: collision with root package name */
    public long f13772e;

    /* renamed from: f, reason: collision with root package name */
    public long f13773f;

    /* renamed from: g, reason: collision with root package name */
    public String f13774g;
    public String h;
    public String i;
    public String j;
    public final cyg k;
    public String l;
    public long m;
    public boolean n;
    public long o;
    public long p;
    public String q;
    public long r;
    public boolean s;
    public long t;
    public long u;
    public final String v;
    public String w;
    public String x;
    public long y;
    public ArrayList z;

    public cyo(cyg cygVar, String str) {
        ckd.k(cygVar);
        ckd.bf(str);
        this.k = cygVar;
        this.v = str;
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar._e();
    }

    public final void af(List list) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        if (kj.s(this.z, list)) {
            return;
        }
        this.n = true;
        this.z = list != null ? new ArrayList(list) : null;
    }

    public final void ag(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.f13772e != j;
        this.f13772e = j;
    }

    public final void ah(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.p != j;
        this.p = j;
    }

    public final String ai() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.w;
    }

    public final void aj(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.r != j;
        this.r = j;
    }

    public final void ak(String str) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= !kj.s(this.j, str);
        this.j = str;
    }

    public final String al() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.aa;
    }

    public final void am(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.f13773f != j;
        this.f13773f = j;
    }

    public final void an(String str) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= !kj.s(this.i, str);
        this.i = str;
    }

    public final long ao() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.f13770c;
    }

    public final void ap(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.y != j;
        this.y = j;
    }

    public final void aq(String str) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= !kj.s(this.w, str);
        this.w = str;
    }

    public final void ar() {
        cyg cygVar = this.k;
        fth fthVar = cygVar.j;
        cyg.ak(fthVar);
        fthVar._e();
        long j = this.ad + 1;
        if (j > 2147483647L) {
            bgm bgmVar = cygVar.z;
            cyg.ak(bgmVar);
            bgmVar.f11520g.i(bgm.t(this.v), "Bundle index overflow. appId");
            j = 0;
        }
        this.n = true;
        this.ad = j;
    }

    public final void as(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.u != j;
        this.u = j;
    }

    public final String at() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.x;
    }

    public final long au() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.r;
    }

    public final void av(long j) {
        ckd.u(j >= 0);
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.ad != j;
        this.ad = j;
    }

    public final void aw(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.f13769b != j;
        this.f13769b = j;
    }

    public final void ax(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.f13770c != j;
        this.f13770c = j;
    }

    public final String ay() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.f13774g;
    }

    public final void az(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.t != j;
        this.t = j;
    }

    public final void ba(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.f13768ab != j;
        this.f13768ab = j;
    }

    public final void bb(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.o != j;
        this.o = j;
    }

    public final void bc(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.f13767a != j;
        this.f13767a = j;
    }

    public final void bd(String str) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.n |= true ^ kj.s(this.x, str);
        this.x = str;
    }

    public final void be(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.ac != j;
        this.ac = j;
    }

    public final void bf(String str) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= !kj.s(this.q, str);
        this.q = str;
    }

    public final boolean bg() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.s;
    }

    public final void bh(String str) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= !kj.s(this.h, str);
        this.h = str;
    }

    public final String bi() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.v;
    }

    public final void bj(String str) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= !kj.s(this.aa, str);
        this.aa = str;
    }

    public final String bk() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        return this.q;
    }

    public final String bl() {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        String str = this.h;
        bh(null);
        return str;
    }

    public final void bm(boolean z) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.f13771d != z;
        this.f13771d = z;
    }

    public final void bn(long j) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        this.n |= this.m != j;
        this.m = j;
    }

    public final void bo(String str) {
        fth fthVar = this.k.j;
        cyg.ak(fthVar);
        fthVar._e();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.n |= true ^ kj.s(this.f13774g, str);
        this.f13774g = str;
    }
}
