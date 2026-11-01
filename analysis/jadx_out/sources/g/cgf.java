package g;

import android.graphics.Rect;
import android.util.LongSparseArray;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class cgf {

    /* renamed from: a, reason: collision with root package name */
    public LongSparseArray f12823a;

    /* renamed from: b, reason: collision with root package name */
    public float f12824b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f12826d;

    /* renamed from: e, reason: collision with root package name */
    public HashMap f12827e;

    /* renamed from: f, reason: collision with root package name */
    public float f12828f;

    /* renamed from: g, reason: collision with root package name */
    public HashMap f12829g;
    public ArrayList i;
    public bul j;
    public gnb k;
    public float l;
    public ArrayList m;
    public Rect o;
    public HashMap q;
    public SparseArray r;
    public dac s;
    public final ejl h = new ejl();
    public final HashSet n = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    public int f12825c = 0;
    public String p = "";

    public final void t(String str) {
        hbp.b(str);
        this.n.add(str);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            sb.append(((cbc) it.next()).y("\t"));
        }
        return sb.toString();
    }

    public final ewh u(String str) {
        int size = this.i.size();
        for (int i = 0; i < size; i++) {
            ewh ewhVar = (ewh) this.i.get(i);
            String str2 = ewhVar.f16269a;
            if (str2.equalsIgnoreCase(str) || (str2.endsWith("\r") && str2.substring(0, str2.length() - 1).equalsIgnoreCase(str))) {
                return ewhVar;
            }
        }
        return null;
    }

    public final float v() {
        return (long) (((this.f12828f - this.f12824b) / this.l) * 1000.0f);
    }
}
