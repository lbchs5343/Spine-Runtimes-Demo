package androidx.fragment.app;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import g.dek;
import g.den;
import g.dou;
import g.fay;
import g.flu;
import g.fzt;
import j$.util.Objects;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class j extends den implements flu {

    /* renamed from: a, reason: collision with root package name */
    public final v f191a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f192b;

    /* renamed from: c, reason: collision with root package name */
    public int f193c;

    public j(v vVar) {
        vVar.bi();
        fay fayVar = vVar.af;
        if (fayVar != null) {
            fayVar.h.getClassLoader();
        }
        this.p = new ArrayList();
        this.k = false;
        this.f193c = -1;
        this.f191a = vVar;
    }

    public final void d(int i) {
        ArrayList arrayList = this.p;
        if (this.w) {
            if (v.ao(2)) {
                toString();
            }
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                fzt fztVar = (fzt) arrayList.get(i2);
                Fragment fragment = fztVar.f17750g;
                if (fragment != null) {
                    fragment.mBackStackNesting += i;
                    if (v.ao(2)) {
                        Objects.toString(fztVar.f17750g);
                        int i3 = fztVar.f17750g.mBackStackNesting;
                    }
                }
            }
        }
    }

    public final int e(boolean z) {
        if (this.f192b) {
            throw new IllegalStateException("commit already called");
        }
        if (v.ao(2)) {
            toString();
            PrintWriter printWriter = new PrintWriter(new dou());
            g("  ", printWriter, true);
            printWriter.close();
        }
        this.f192b = true;
        boolean z2 = this.w;
        v vVar = this.f191a;
        if (z2) {
            this.f193c = vVar.aa.getAndIncrement();
        } else {
            this.f193c = -1;
        }
        vVar.bn(this, z);
        return this.f193c;
    }

    @Override // g.flu
    public final boolean f(ArrayList arrayList, ArrayList arrayList2) {
        if (v.ao(2)) {
            toString();
        }
        arrayList.add(this);
        arrayList2.add(Boolean.FALSE);
        if (!this.w) {
            return true;
        }
        v vVar = this.f191a;
        if (vVar.j == null) {
            vVar.j = new ArrayList();
        }
        vVar.j.add(this);
        return true;
    }

    public final void g(String str, PrintWriter printWriter, boolean z) {
        String str2;
        ArrayList arrayList = this.p;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.i);
            printWriter.print(" mIndex=");
            printWriter.print(this.f193c);
            printWriter.print(" mCommitted=");
            printWriter.println(this.f192b);
            if (this.q != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.q));
            }
            if (this.t != 0 || this.v != 0) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.t));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.v));
            }
            if (this.m != 0 || this.o != 0) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.m));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.o));
            }
            if (this.s != 0 || this.u != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.s));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.u);
            }
            if (this.j != 0 || this.n != null) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.j));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.n);
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        printWriter.print(str);
        printWriter.println("Operations:");
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            fzt fztVar = (fzt) arrayList.get(i);
            switch (fztVar.f17747d) {
                case 0:
                    str2 = "NULL";
                    break;
                case 1:
                    str2 = "ADD";
                    break;
                case 2:
                    str2 = "REPLACE";
                    break;
                case 3:
                    str2 = "REMOVE";
                    break;
                case 4:
                    str2 = "HIDE";
                    break;
                case 5:
                    str2 = "SHOW";
                    break;
                case 6:
                    str2 = "DETACH";
                    break;
                case 7:
                    str2 = "ATTACH";
                    break;
                case 8:
                    str2 = "SET_PRIMARY_NAV";
                    break;
                case 9:
                    str2 = "UNSET_PRIMARY_NAV";
                    break;
                case 10:
                    str2 = "OP_SET_MAX_LIFECYCLE";
                    break;
                default:
                    str2 = "cmd=" + fztVar.f17747d;
                    break;
            }
            printWriter.print(str);
            printWriter.print("  Op #");
            printWriter.print(i);
            printWriter.print(": ");
            printWriter.print(str2);
            printWriter.print(" ");
            printWriter.println(fztVar.f17750g);
            if (z) {
                if (fztVar.f17745b != 0 || fztVar.f17746c != 0) {
                    printWriter.print(str);
                    printWriter.print("enterAnim=#");
                    printWriter.print(Integer.toHexString(fztVar.f17745b));
                    printWriter.print(" exitAnim=#");
                    printWriter.println(Integer.toHexString(fztVar.f17746c));
                }
                if (fztVar.f17748e != 0 || fztVar.i != 0) {
                    printWriter.print(str);
                    printWriter.print("popEnterAnim=#");
                    printWriter.print(Integer.toHexString(fztVar.f17748e));
                    printWriter.print(" popExitAnim=#");
                    printWriter.println(Integer.toHexString(fztVar.i));
                }
            }
        }
    }

    @Override // g.den
    public final void h(int i, Fragment fragment, String str, int i2) {
        String str2 = fragment.mPreviousWho;
        if (str2 != null) {
            dek.d(fragment, str2);
        }
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        if (str != null) {
            String str3 = fragment.mTag;
            if (str3 != null && !str.equals(str3)) {
                StringBuilder sb = new StringBuilder("Can't change tag of fragment ");
                sb.append(fragment);
                sb.append(": was ");
                throw new IllegalStateException(awf.f(fragment.mTag, " now ", str, sb));
            }
            fragment.mTag = str;
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            }
            int i3 = fragment.mFragmentId;
            if (i3 != 0 && i3 != i) {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
            fragment.mFragmentId = i;
            fragment.mContainerId = i;
        }
        x(new fzt(fragment, i2));
        fragment.mFragmentManager = this.f191a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.f193c >= 0) {
            sb.append(" #");
            sb.append(this.f193c);
        }
        if (this.i != null) {
            sb.append(" ");
            sb.append(this.i);
        }
        sb.append("}");
        return sb.toString();
    }
}
