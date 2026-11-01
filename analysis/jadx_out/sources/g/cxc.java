package g;

import android.content.Context;
import cn.trinea.android.developertools.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class cxc {

    /* renamed from: a, reason: collision with root package name */
    public Object f13671a;

    /* renamed from: b, reason: collision with root package name */
    public Object f13672b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13673c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f13674d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13675e;

    public cxc(int i) {
        this.f13673c = i;
        switch (i) {
            case 2:
                break;
            default:
                this.f13674d = true;
                break;
        }
    }

    public cxc(dqe dqeVar, boolean z, fjv fjvVar, boolean z2) {
        this.f13673c = 3;
        this.f13672b = dqeVar;
        this.f13674d = z;
        this.f13671a = fjvVar;
        this.f13675e = z2;
    }

    public cxc(gpu gpuVar, boolean z) {
        this.f13673c = 0;
        this.f13671a = new HashSet();
        this.f13674d = true;
        this.f13672b = gpuVar;
        this.f13675e = z;
    }

    public /* synthetic */ cxc(boolean z) {
        this.f13673c = 1;
    }

    public void f(bos... bosVarArr) {
        bff.p(bosVarArr, "cipherSuites");
        if (!this.f13674d) {
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }
        ArrayList arrayList = new ArrayList(bosVarArr.length);
        for (bos bosVar : bosVarArr) {
            arrayList.add(bosVar.t);
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        k((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public cxc g() {
        cxc cxcVar = new cxc((gpu) this.f13672b, this.f13675e);
        cxcVar.f13674d = this.f13674d;
        ((HashSet) cxcVar.f13671a).addAll((HashSet) this.f13671a);
        return cxcVar;
    }

    public void h(long j) {
        Context context;
        Context context2;
        Context context3;
        dqe dqeVar = (dqe) this.f13672b;
        if (j >= 0) {
            context2 = dqeVar.x;
            gm.c(context2, R.string.begin_download_upgrade_app);
            context3 = dqeVar.x;
            dqeVar.aa(new gll(context3.getPackageName(), this.f13674d, j));
            return;
        }
        if (j == -2) {
            ((fjv) this.f13671a).getPackageName();
            context = dqeVar.x;
            gm.e(context, R.string.content_disabled_request_permission2);
        }
    }

    public void i(String... strArr) {
        bff.p(strArr, "tlsVersions");
        if (!this.f13674d) {
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("At least one TLS version is required");
        }
        this.f13672b = (String[]) strArr.clone();
    }

    public ezm j() {
        return new ezm(this.f13674d, this.f13675e, (String[]) this.f13671a, (String[]) this.f13672b);
    }

    public void k(String... strArr) {
        bff.p(strArr, "cipherSuites");
        if (!this.f13674d) {
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("At least one cipher suite is required");
        }
        this.f13671a = (String[]) strArr.clone();
    }

    public void l(gdk... gdkVarArr) {
        if (!this.f13674d) {
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }
        ArrayList arrayList = new ArrayList(gdkVarArr.length);
        for (gdk gdkVar : gdkVarArr) {
            arrayList.add(gdkVar.b());
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        i((String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public String toString() {
        switch (this.f13673c) {
            case 0:
                StringBuilder sb = new StringBuilder("CentralityState - ");
                if (this.f13674d) {
                    sb.append("allows central");
                } else {
                    sb.append("disallows central");
                }
                sb.append(" | ");
                Iterator it = ((HashSet) this.f13671a).iterator();
                while (it.hasNext()) {
                    sb.append(((gks) it.next()).getName());
                    sb.append(" ");
                }
                return sb.toString();
            default:
                return super.toString();
        }
    }
}
