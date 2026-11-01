package g;

import android.content.pm.ShortcutInfo;
import android.graphics.Rect;
import android.os.Parcelable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.ads.zzazu;
import java.io.File;
import java.util.Comparator;
import java.util.List;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class aqn implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f10660c;

    /* renamed from: b, reason: collision with root package name */
    public static final aqn f10659b = new aqn(0);

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ aqn f10658a = new aqn(1);

    public /* synthetic */ aqn(int i) {
        this.f10660c = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x01e1 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:108:0x01df A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0172 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0174 A[RETURN, SYNTHETIC] */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int compare(Object obj, Object obj2) {
        long lastChangedTimestamp;
        long lastChangedTimestamp2;
        long lastChangedTimestamp3;
        long lastChangedTimestamp4;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9 = this.f10660c;
        Comparator comparator = String.CASE_INSENSITIVE_ORDER;
        switch (i9) {
            case 0:
                ((fgh) obj).getClass();
                ((fgh) obj2).getClass();
                throw null;
            case 1:
                Parcelable.Creator<GoogleSignInAccount> creator = GoogleSignInAccount.CREATOR;
                return ((Scope) obj).getScopeUri().compareTo(((Scope) obj2).getScopeUri());
            case 2:
                String str = (String) obj;
                String str2 = (String) obj2;
                bff.p(str, "a");
                bff.p(str2, "b");
                int min = Math.min(str.length(), str2.length());
                for (int i10 = 4; i10 < min; i10++) {
                    char charAt = str.charAt(i10);
                    char charAt2 = str2.charAt(i10);
                    if (charAt != charAt2) {
                        return bff.ad(charAt, charAt2) < 0 ? -1 : 1;
                    }
                }
                int length = str.length();
                int length2 = str2.length();
                if (length == length2) {
                    return 0;
                }
                if (length < length2) {
                }
            case 3:
                WeakHashMap weakHashMap = goi.f18490c;
                float m = cd.m((View) obj);
                float m2 = cd.m((View) obj2);
                if (m > m2) {
                    return -1;
                }
                return m < m2 ? 1 : 0;
            case 4:
                lj ljVar = (lj) obj;
                lj ljVar2 = (lj) obj2;
                RecyclerView recyclerView = ljVar.f19589a;
                if ((recyclerView == null) != (ljVar2.f19589a == null)) {
                    return recyclerView == null ? 1 : -1;
                }
                boolean z = ljVar.f19591c;
                if (z == ljVar2.f19591c) {
                    int i11 = ljVar2.f19592d - ljVar.f19592d;
                    if (i11 != 0) {
                        return i11;
                    }
                    int i12 = ljVar.f19593e - ljVar2.f19593e;
                    if (i12 != 0) {
                        return i12;
                    }
                    return 0;
                }
                if (z) {
                }
            case 5:
                Rect boundsInScreen = ((he) obj).getBoundsInScreen();
                Rect boundsInScreen2 = ((he) obj2).getBoundsInScreen();
                int compare = Integer.compare(boundsInScreen.top, boundsInScreen2.top);
                if (compare != 0) {
                    return compare;
                }
                int compare2 = Integer.compare(boundsInScreen.left, boundsInScreen2.left);
                if (compare2 != 0) {
                    return compare2;
                }
                int compare3 = Integer.compare(boundsInScreen.bottom, boundsInScreen2.bottom);
                return compare3 != 0 ? compare3 : Integer.compare(boundsInScreen.right, boundsInScreen2.right);
            case 6:
                return ((Comparable) obj).compareTo((Comparable) obj2);
            case 7:
                return Long.compare(((File) obj2).lastModified(), ((File) obj).lastModified());
            case 8:
                return ((crb) obj).k - ((crb) obj2).k;
            case 9:
                ShortcutInfo o = dkx.o(obj);
                ShortcutInfo o2 = dkx.o(obj2);
                lastChangedTimestamp = o.getLastChangedTimestamp();
                lastChangedTimestamp2 = o2.getLastChangedTimestamp();
                if (lastChangedTimestamp == lastChangedTimestamp2) {
                    return 0;
                }
                lastChangedTimestamp3 = o.getLastChangedTimestamp();
                lastChangedTimestamp4 = o2.getLastChangedTimestamp();
                return lastChangedTimestamp3 > lastChangedTimestamp4 ? 1 : -1;
            case 10:
                return comparator.compare(((aug) obj).f10862a, ((aug) obj2).f10862a);
            case 11:
                return comparator.compare(((aug) obj).f10862a, ((aug) obj2).f10862a);
            case 12:
                return ((View) obj).getTop() - ((View) obj2).getTop();
            case 13:
                he heVar = (he) obj;
                he heVar2 = (he) obj2;
                int area = heVar.getArea();
                int area2 = heVar2.getArea();
                if (area <= area2) {
                    if (area >= area2) {
                        i = heVar.layer;
                        i2 = heVar2.layer;
                        if (i <= i2) {
                            i3 = heVar.layer;
                            i4 = heVar2.layer;
                            if (i3 >= i4) {
                                i5 = heVar.index;
                                i6 = heVar2.index;
                                if (i5 <= i6) {
                                    i7 = heVar.index;
                                    i8 = heVar2.index;
                                    if (i7 >= i8) {
                                        return 0;
                                    }
                                }
                            }
                        }
                    }
                    return -1;
                }
                return 1;
            case 14:
                return ((buo) obj).f12236d - ((buo) obj2).f12236d;
            case 15:
                return ((db) obj).f13903a - ((db) obj2).f13903a;
            case 16:
                fnx fnxVar = (fnx) ((View) obj).getLayoutParams();
                fnx fnxVar2 = (fnx) ((View) obj2).getLayoutParams();
                boolean z2 = fnxVar.f17113c;
                return z2 != fnxVar2.f17113c ? z2 ? 1 : -1 : fnxVar.f17112b - fnxVar2.f17112b;
            case 17:
                return ((byte[]) obj).length - ((byte[]) obj2).length;
            case 18:
                zzazu zzazuVar = (zzazu) obj;
                zzazu zzazuVar2 = (zzazu) obj2;
                int i13 = zzazuVar.f4654c - zzazuVar2.f4654c;
                return i13 != 0 ? i13 : Long.compare(zzazuVar.f4652a, zzazuVar2.f4652a);
            default:
                List list = bah.f11159a;
                return list.indexOf((String) obj) - list.indexOf((String) obj2);
        }
    }
}
