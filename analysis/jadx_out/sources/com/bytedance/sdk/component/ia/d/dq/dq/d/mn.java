package com.bytedance.sdk.component.ia.d.dq.dq.d;

import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awf;
import g.tn;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn extends d {

    /* renamed from: d, reason: collision with root package name */
    protected com.bytedance.sdk.component.ia.dq.s f1908d;
    protected List<String> ox;
    private com.bytedance.sdk.component.ia.d.p.d.dq p;

    public mn(Context context, com.bytedance.sdk.component.ia.d.p.d.dq dqVar, com.bytedance.sdk.component.ia.dq.s sVar) {
        super(context, sVar, dqVar == null ? com.bytedance.sdk.component.ia.d.p.d.dq.ox() : dqVar);
        this.ox = new ArrayList();
        this.p = dqVar;
        this.f1908d = sVar;
        if (dqVar == null) {
            this.p = com.bytedance.sdk.component.ia.d.p.d.dq.ox();
        }
    }

    private static String dq(String str, String str2) {
        return !TextUtils.isEmpty(str) ? str : str2;
    }

    private static String dq(String str, List<?> list, int i, boolean z) {
        String str2 = z ? " IN " : " NOT IN ";
        String str3 = z ? " OR " : " AND ";
        int min = Math.min(i, 1000);
        int size = list.size();
        int i2 = size % min == 0 ? size / min : (size / min) + 1;
        StringBuilder sb = new StringBuilder();
        for (int i3 = 0; i3 < i2; i3++) {
            int i4 = i3 * min;
            String dq = dq(TextUtils.join("','", list.subList(i4, Math.min(i4 + min, size))), "");
            if (i3 != 0) {
                sb.append(str3);
            }
            awf.y(sb, str, str2, "('", dq);
            sb.append("')");
        }
        return dq(sb.toString(), awf.i(str, str2, "('')"));
    }

    private void dq(int i, long j) {
        long currentTimeMillis = System.currentTimeMillis() - j;
        Context context = getContext();
        String dq = dq();
        StringBuilder sb = new StringBuilder();
        sb.append(currentTimeMillis);
        String sb2 = sb.toString();
        StringBuilder sb3 = new StringBuilder();
        sb3.append(i);
        com.bytedance.sdk.component.ia.d.dq.dq.d.delete(context, dq, "gen_time <? OR retry >?", new String[]{sb2, sb3.toString()}, this.f1908d);
    }

    public static String p(String str) {
        return tn.ad("CREATE TABLE IF NOT EXISTS ", str, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)");
    }

    private void p(List<com.bytedance.sdk.component.ia.dq.d> list) {
        LinkedList linkedList = new LinkedList();
        Iterator<com.bytedance.sdk.component.ia.dq.d> it = list.iterator();
        while (it.hasNext()) {
            linkedList.add(it.next().ox());
        }
        com.bytedance.sdk.component.ia.d.dq.dq.d.dq(getContext(), "UPDATE " + dq() + " SET retry = retry+1 WHERE " + dq(TTDownloadField.TT_ID, (List<?>) linkedList, 1000, true), this.f1908d);
    }

    public static String s(String str) {
        return tn.ad("ALTER TABLE ", str, " ADD COLUMN encrypt INTEGER default 0");
    }

    public byte d() {
        return (byte) 1;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.ox
    public String delete(List<com.bytedance.sdk.component.ia.dq.d> list) {
        if (list == null || list.size() == 0) {
            return "list is empty";
        }
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.sdk.component.ia.dq.d dVar : list) {
            linkedList.add(dVar.ox());
            com.bytedance.sdk.component.ia.d.ox.dq.kk(dVar, this.f1908d);
        }
        dq();
        linkedList.size();
        String dq = com.bytedance.sdk.component.ia.d.dq.dq.d.dq(getContext(), "DELETE FROM " + dq() + " WHERE " + dq(TTDownloadField.TT_ID, (List<?>) linkedList, 1000, true), this.f1908d);
        dq(linkedList);
        return dq;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.d
    public String dq() {
        return this.f1908d.d().p();
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.ox
    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, String str, int i2) {
        long dq = com.bytedance.sdk.component.ia.d.d.dq.dq(i, getContext(), this.f1908d);
        if (dq <= 0) {
            dq = 1;
        } else if (dq > 100) {
            dq = 100;
        }
        ArrayList arrayList = new ArrayList();
        this.ox.clear();
        Cursor query = com.bytedance.sdk.component.ia.d.dq.dq.d.query(getContext(), dq(), new String[]{TTDownloadField.TT_ID, "value", "encrypt"}, null, null, null, null, str + " DESC limit " + dq, this.f1908d);
        if (query != null) {
            while (true) {
                try {
                    if (query.moveToNext()) {
                        try {
                            String string = query.getString(query.getColumnIndex(TTDownloadField.TT_ID));
                            String string2 = query.getString(query.getColumnIndex("value"));
                            if (query.getInt(query.getColumnIndex("encrypt")) == 1) {
                                string2 = this.f1908d.p().dq(string2);
                            }
                            if (TextUtils.isEmpty(string2)) {
                                this.ox.add(string);
                            } else {
                                if (arrayList.size() > 100) {
                                    break;
                                }
                                com.bytedance.sdk.component.ia.d.p.dq.dq dqVar = new com.bytedance.sdk.component.ia.d.p.dq.dq(string, new JSONObject(string2));
                                dqVar.d(ox());
                                dqVar.dq(d());
                                arrayList.add(dqVar);
                            }
                        } catch (Throwable unused) {
                        }
                    }
                } finally {
                }
            }
            try {
                query.close();
                if (!this.ox.isEmpty()) {
                    ox(this.ox);
                    this.ox.clear();
                }
                if (i2 == 2 || i2 == 1) {
                    dq(arrayList, 5, 604800000L);
                }
            } catch (Exception unused2) {
            }
        }
        return arrayList;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.ox
    public List<com.bytedance.sdk.component.ia.dq.d> dq(String str, int i) {
        com.bytedance.sdk.component.ia.d.p.d.dq dqVar = this.p;
        return dqVar == null ? new ArrayList() : dq(dqVar.d(), str, i);
    }

    public void dq(List<com.bytedance.sdk.component.ia.dq.d> list, int i, long j) {
        if (list == null || list.size() == 0) {
            return;
        }
        try {
            p(list);
            dq(i, j);
        } catch (Exception unused) {
        }
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq
    public boolean dq(com.bytedance.sdk.component.ia.dq.d dVar) {
        return com.bytedance.sdk.component.ia.d.ox.dq.p(dVar);
    }

    public byte ox() {
        return (byte) 2;
    }

    public void ox(List<String> list) {
        dq();
        list.size();
        com.bytedance.sdk.component.ia.d.dq.dq.d.dq(getContext(), "DELETE FROM " + dq() + " WHERE " + dq(TTDownloadField.TT_ID, (List<?>) list, 1000, true), this.f1908d);
        com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.gh(), list.size(), this.f1908d);
        dq(list);
    }
}
