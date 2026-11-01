package androidx.recyclerview.widget;

import android.util.Log;
import android.view.View;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.goi;
import g.tn;
import g.yx;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public abstract class p {

    /* renamed from: a, reason: collision with root package name */
    public static final List f308a = Collections.EMPTY_LIST;

    /* renamed from: f, reason: collision with root package name */
    public int f313f;
    public m j;
    public RecyclerView m;
    public final View n;
    public WeakReference p;

    /* renamed from: g, reason: collision with root package name */
    public int f314g = -1;
    public int k = -1;
    public long l = -1;
    public int t = -1;

    /* renamed from: d, reason: collision with root package name */
    public int f311d = -1;

    /* renamed from: b, reason: collision with root package name */
    public p f309b = null;
    public p o = null;
    public ArrayList i = null;
    public List h = null;
    public int s = 0;
    public f q = null;

    /* renamed from: e, reason: collision with root package name */
    public boolean f312e = false;

    /* renamed from: c, reason: collision with root package name */
    public int f310c = 0;
    public int r = -1;

    public p(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.n = view;
    }

    public final boolean aa() {
        return (this.f313f & 1) != 0;
    }

    public final void ab(int i) {
        this.f313f = i | this.f313f;
    }

    public final boolean ac() {
        return (this.f313f & 4) != 0;
    }

    public final boolean ad() {
        return (this.f313f & 32) != 0;
    }

    public final void ae() {
        if (RecyclerView.sDebugAssertionsEnabled && ah()) {
            throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
        }
        this.f313f = 0;
        this.f314g = -1;
        this.k = -1;
        this.l = -1L;
        this.f311d = -1;
        this.s = 0;
        this.f309b = null;
        this.o = null;
        ArrayList arrayList = this.i;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.f313f &= -1025;
        this.f310c = 0;
        this.r = -1;
        RecyclerView.clearNestedRecyclerViewIfNotNested(this);
    }

    public final boolean af() {
        return this.q != null;
    }

    public final int ag() {
        int i = this.f311d;
        return i == -1 ? this.f314g : i;
    }

    public final boolean ah() {
        return (this.f313f & 256) != 0;
    }

    public final List ai() {
        ArrayList arrayList;
        return ((this.f313f & 1024) != 0 || (arrayList = this.i) == null || arrayList.size() == 0) ? f308a : this.h;
    }

    public final boolean aj() {
        if ((this.f313f & 16) != 0) {
            return false;
        }
        WeakHashMap weakHashMap = goi.f18490c;
        return !this.n.hasTransientState();
    }

    public final String toString() {
        StringBuilder l = tn.l(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
        l.append(Integer.toHexString(hashCode()));
        l.append(" position=");
        l.append(this.f314g);
        l.append(" id=");
        l.append(this.l);
        l.append(", oldPos=");
        l.append(this.k);
        l.append(", pLpos:");
        l.append(this.f311d);
        StringBuilder sb = new StringBuilder(l.toString());
        if (af()) {
            sb.append(" scrap ");
            sb.append(this.f312e ? "[changeScrap]" : "[attachedScrap]");
        }
        if (ac()) {
            sb.append(" invalid");
        }
        if (!aa()) {
            sb.append(" unbound");
        }
        if ((this.f313f & 2) != 0) {
            sb.append(" update");
        }
        if (u()) {
            sb.append(" removed");
        }
        if (w()) {
            sb.append(" ignored");
        }
        if (ah()) {
            sb.append(" tmpDetached");
        }
        if (!aj()) {
            sb.append(" not recyclable(" + this.s + ")");
        }
        if ((this.f313f & 512) != 0 || ac()) {
            sb.append(" undefined adapter position");
        }
        if (this.n.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }

    public final boolean u() {
        return (this.f313f & 8) != 0;
    }

    public final boolean v() {
        return (this.f313f & 2) != 0;
    }

    public final boolean w() {
        return (this.f313f & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME) != 0;
    }

    public final void x(boolean z) {
        int i = this.s;
        int i2 = z ? i - 1 : i + 1;
        this.s = i2;
        if (i2 < 0) {
            this.s = 0;
            if (RecyclerView.sDebugAssertionsEnabled) {
                throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            }
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        } else if (!z && i2 == 1) {
            this.f313f |= 16;
        } else if (z && i2 == 0) {
            this.f313f &= -17;
        }
        if (RecyclerView.sVerboseLoggingEnabled) {
            toString();
        }
    }

    public final boolean y() {
        View view = this.n;
        return (view.getParent() == null || view.getParent() == this.m) ? false : true;
    }

    public final void z(int i, boolean z) {
        if (this.k == -1) {
            this.k = this.f314g;
        }
        if (this.f311d == -1) {
            this.f311d = this.f314g;
        }
        if (z) {
            this.f311d += i;
        }
        this.f314g += i;
        View view = this.n;
        if (view.getLayoutParams() != null) {
            ((yx) view.getLayoutParams()).f20373d = true;
        }
    }
}
