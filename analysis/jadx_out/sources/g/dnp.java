package g;

import java.util.List;

/* loaded from: classes.dex */
public class dnp implements fw {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14483c = 1;

    /* renamed from: d, reason: collision with root package name */
    public String f14484d;

    /* renamed from: e, reason: collision with root package name */
    public List f14485e;

    public /* synthetic */ dnp() {
    }

    public dnp(List list, String str) {
        this.f14484d = str;
        this.f14485e = list;
    }

    @Override // g.fw
    public final List a() {
        switch (this.f14483c) {
        }
        return this.f14485e;
    }

    @Override // g.fw
    public final String b() {
        switch (this.f14483c) {
        }
        return this.f14484d;
    }

    public boolean equals(Object obj) {
        switch (this.f14483c) {
            case 0:
                if (this != obj) {
                    if (obj instanceof fw) {
                        fw fwVar = (fw) obj;
                        if (!this.f14485e.equals(fwVar.a()) || !this.f14484d.equals(fwVar.b())) {
                        }
                    }
                    return false;
                }
                return true;
            default:
                return super.equals(obj);
        }
    }

    public int hashCode() {
        switch (this.f14483c) {
            case 0:
                return this.f14484d.hashCode() + (this.f14485e.hashCode() * 31);
            default:
                return super.hashCode();
        }
    }

    public String toString() {
        switch (this.f14483c) {
            case 0:
                return "(" + acr.ay(this.f14485e) + ")" + this.f14484d;
            default:
                return "(" + acr.ay(this.f14485e) + ")" + this.f14484d;
        }
    }
}
