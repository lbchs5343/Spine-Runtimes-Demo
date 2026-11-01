package g;

import android.database.Cursor;
import com.bykv.vk.component.ttvideo.LiveConfigKey;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class bzp {

    /* renamed from: a, reason: collision with root package name */
    public final Set f12521a;

    /* renamed from: b, reason: collision with root package name */
    public final String f12522b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f12523c;

    /* renamed from: d, reason: collision with root package name */
    public final Set f12524d;

    public bzp(String str, Map map, AbstractSet abstractSet, AbstractSet abstractSet2) {
        bff.p(abstractSet, "foreignKeys");
        this.f12522b = str;
        this.f12523c = map;
        this.f12524d = abstractSet;
        this.f12521a = abstractSet2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01da, code lost:
    
        r9 = r10.c();
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01de, code lost:
    
        r3.close();
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final bzp e(crd crdVar, String str) {
        Map g2;
        Cursor k = crdVar.k("PRAGMA table_info(`" + str + "`)");
        try {
            if (k.getColumnCount() <= 0) {
                g2 = dyq.f15095a;
                k.close();
            } else {
                int columnIndex = k.getColumnIndex(abn.EXTRA_UA_APP_NAME);
                int columnIndex2 = k.getColumnIndex("type");
                int columnIndex3 = k.getColumnIndex("notnull");
                int columnIndex4 = k.getColumnIndex("pk");
                int columnIndex5 = k.getColumnIndex("dflt_value");
                fzq fzqVar = new fzq();
                while (k.moveToNext()) {
                    String string = k.getString(columnIndex);
                    String string2 = k.getString(columnIndex2);
                    boolean z = k.getInt(columnIndex3) != 0;
                    int i = k.getInt(columnIndex4);
                    String string3 = k.getString(columnIndex5);
                    bff.e(string, abn.EXTRA_UA_APP_NAME);
                    bff.e(string2, "type");
                    fzqVar.put(string, new gxa(i, string, string2, string3, z, 2));
                }
                g2 = fzqVar.g();
                k.close();
            }
            k = crdVar.k("PRAGMA foreign_key_list(`" + str + "`)");
            try {
                int columnIndex6 = k.getColumnIndex(TTDownloadField.TT_ID);
                int columnIndex7 = k.getColumnIndex("seq");
                int columnIndex8 = k.getColumnIndex("table");
                int columnIndex9 = k.getColumnIndex("on_delete");
                int columnIndex10 = k.getColumnIndex("on_update");
                List ac = eg.ac(k);
                k.moveToPosition(-1);
                dra draVar = new dra();
                while (k.moveToNext()) {
                    if (k.getInt(columnIndex7) == 0) {
                        int i2 = k.getInt(columnIndex6);
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        int i3 = columnIndex6;
                        ArrayList arrayList3 = new ArrayList();
                        for (Object obj : ac) {
                            int i4 = columnIndex7;
                            List list = ac;
                            if (((clo) obj).f13077c == i2) {
                                arrayList3.add(obj);
                            }
                            columnIndex7 = i4;
                            ac = list;
                        }
                        int i5 = columnIndex7;
                        List list2 = ac;
                        Iterator it = arrayList3.iterator();
                        while (it.hasNext()) {
                            clo cloVar = (clo) it.next();
                            arrayList.add(cloVar.f13075a);
                            arrayList2.add(cloVar.f13076b);
                        }
                        String string4 = k.getString(columnIndex8);
                        bff.e(string4, "cursor.getString(tableColumnIndex)");
                        String string5 = k.getString(columnIndex9);
                        bff.e(string5, "cursor.getString(onDeleteColumnIndex)");
                        String string6 = k.getString(columnIndex10);
                        bff.e(string6, "cursor.getString(onUpdateColumnIndex)");
                        draVar.add(new bdv(string4, string5, string6, arrayList, arrayList2));
                        columnIndex6 = i3;
                        columnIndex7 = i5;
                        ac = list2;
                    }
                }
                dra c2 = draVar.c();
                k.close();
                k = crdVar.k("PRAGMA index_list(`" + str + "`)");
                try {
                    int columnIndex11 = k.getColumnIndex(abn.EXTRA_UA_APP_NAME);
                    int columnIndex12 = k.getColumnIndex(LiveConfigKey.ORIGIN);
                    int columnIndex13 = k.getColumnIndex("unique");
                    dra draVar2 = null;
                    if (columnIndex11 != -1 && columnIndex12 != -1 && columnIndex13 != -1) {
                        dra draVar3 = new dra();
                        while (true) {
                            if (!k.moveToNext()) {
                                break;
                            }
                            if ("c".equals(k.getString(columnIndex12))) {
                                String string7 = k.getString(columnIndex11);
                                boolean z2 = k.getInt(columnIndex13) == 1;
                                bff.e(string7, abn.EXTRA_UA_APP_NAME);
                                bg n = eg.n(crdVar, string7, z2);
                                if (n == null) {
                                    k.close();
                                    break;
                                }
                                draVar3.add(n);
                            }
                        }
                        return new bzp(str, g2, c2, draVar2);
                    }
                    k.close();
                    return new bzp(str, g2, c2, draVar2);
                } finally {
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                }
            }
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof bzp)) {
            return false;
        }
        bzp bzpVar = (bzp) obj;
        if (!this.f12522b.equals(bzpVar.f12522b) || !this.f12523c.equals(bzpVar.f12523c) || !bff.n(this.f12524d, bzpVar.f12524d)) {
            return false;
        }
        Set set2 = this.f12521a;
        if (set2 == null || (set = bzpVar.f12521a) == null) {
            return true;
        }
        return set2.equals(set);
    }

    public final int hashCode() {
        return this.f12524d.hashCode() + ((this.f12523c.hashCode() + (this.f12522b.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "TableInfo{name='" + this.f12522b + "', columns=" + this.f12523c + ", foreignKeys=" + this.f12524d + ", indices=" + this.f12521a + '}';
    }
}
