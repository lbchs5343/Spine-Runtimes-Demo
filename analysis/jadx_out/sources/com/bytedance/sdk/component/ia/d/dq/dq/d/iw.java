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
public class iw extends d {

    /* renamed from: d, reason: collision with root package name */
    protected com.bytedance.sdk.component.ia.dq.s f1907d;
    protected List<String> ox;
    private final Context p;
    private com.bytedance.sdk.component.ia.d.p.d.dq s;

    public iw(Context context, com.bytedance.sdk.component.ia.d.p.d.dq dqVar, com.bytedance.sdk.component.ia.dq.s sVar) {
        super(context, sVar, dqVar == null ? com.bytedance.sdk.component.ia.d.p.d.dq.ox() : dqVar);
        this.ox = new ArrayList();
        this.p = context;
        this.s = dqVar;
        this.f1907d = sVar;
        if (dqVar == null) {
            this.s = com.bytedance.sdk.component.ia.d.p.d.dq.ox();
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
        com.bytedance.sdk.component.ia.d.dq.dq.d.delete(context, dq, "gen_time <? OR retry >?", new String[]{sb2, sb3.toString()}, this.f1907d);
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
        com.bytedance.sdk.component.ia.d.dq.dq.d.dq(getContext(), "UPDATE " + dq() + " SET retry = retry+1 WHERE " + dq(TTDownloadField.TT_ID, (List<?>) linkedList, 1000, true), this.f1907d);
    }

    public static String s(String str) {
        return tn.ad("ALTER TABLE ", str, " ADD COLUMN encrypt INTEGER default 0");
    }

    public byte d() {
        return (byte) 2;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.ox
    public String delete(List<com.bytedance.sdk.component.ia.dq.d> list) {
        if (list == null || list.size() == 0) {
            return "list is empty";
        }
        LinkedList linkedList = new LinkedList();
        for (com.bytedance.sdk.component.ia.dq.d dVar : list) {
            linkedList.add(dVar.ox());
            com.bytedance.sdk.component.ia.d.ox.dq.kk(dVar, this.f1907d);
        }
        dq();
        linkedList.size();
        String dq = com.bytedance.sdk.component.ia.d.dq.dq.d.dq(getContext(), "DELETE FROM " + dq() + " WHERE " + dq(TTDownloadField.TT_ID, (List<?>) linkedList, 1000, true), this.f1907d);
        dq(linkedList);
        return dq;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.d
    public String dq() {
        com.bytedance.sdk.component.ia.dq.iw d2 = this.f1907d.d();
        if (d2 != null) {
            return d2.d();
        }
        return null;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.ox
    public List<com.bytedance.sdk.component.ia.dq.d> dq(int i, String str, int i2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        com.bytedance.sdk.component.ia.dq.p pVar;
        String string;
        String string2;
        int i3;
        long dq = com.bytedance.sdk.component.ia.d.d.dq.dq(i, getContext(), this.f1907d);
        com.bytedance.sdk.component.ia.d.ox.ox.d(dq() + " query db max :" + dq + " limit:" + i, this.f1907d);
        if (dq <= 0) {
            dq = 1;
        } else if (dq > 100) {
            dq = 100;
        }
        String str2 = str + " DESC limit " + dq;
        ArrayList arrayList3 = new ArrayList();
        this.ox.clear();
        ArrayList arrayList4 = arrayList3;
        Cursor query = com.bytedance.sdk.component.ia.d.dq.dq.d.query(getContext(), dq(), new String[]{TTDownloadField.TT_ID, "value", "encrypt", "retry"}, null, null, null, null, str2, this.f1907d);
        if (query != null) {
            int i4 = 1;
            try {
                com.bytedance.sdk.component.ia.dq.p p = this.f1907d.p();
                while (query.moveToNext()) {
                    try {
                        string = query.getString(query.getColumnIndex(TTDownloadField.TT_ID));
                        string2 = query.getString(query.getColumnIndex("value"));
                        int i5 = query.getInt(query.getColumnIndex("encrypt"));
                        i3 = query.getInt(query.getColumnIndex("retry"));
                        if (i5 == i4) {
                            string2 = p.dq(string2);
                        }
                    } catch (Throwable th) {
                        th = th;
                        arrayList2 = arrayList4;
                        pVar = p;
                    }
                    if (TextUtils.isEmpty(string2)) {
                        this.ox.add(string);
                    } else {
                        if (arrayList4.size() > 100) {
                            break;
                        }
                        JSONObject jSONObject = new JSONObject(string2);
                        String optString = jSONObject.optString("ad_extra_data");
                        if (TextUtils.isEmpty(optString)) {
                            pVar = p;
                        } else {
                            try {
                                JSONObject jSONObject2 = new JSONObject(optString);
                                jSONObject2.put("retry_count", i3);
                                pVar = p;
                                try {
                                    jSONObject2.put("db_rd", System.currentTimeMillis());
                                    jSONObject.put("ad_extra_data", jSONObject2.toString());
                                } catch (Throwable th2) {
                                    th = th2;
                                    arrayList2 = arrayList4;
                                    try {
                                        com.bytedance.sdk.component.ia.d.ox.ox.ox(th.getMessage(), this.f1907d);
                                        arrayList4 = arrayList2;
                                        p = pVar;
                                        i4 = 1;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        try {
                                            query.close();
                                            if (!this.ox.isEmpty()) {
                                                ox(this.ox);
                                                this.ox.clear();
                                            }
                                            if (i2 == 2 || i2 == 1) {
                                                dq(arrayList2, 5, 604800000L);
                                            }
                                        } catch (Exception unused) {
                                        }
                                        throw th;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                pVar = p;
                                arrayList2 = arrayList4;
                                com.bytedance.sdk.component.ia.d.ox.ox.ox(th.getMessage(), this.f1907d);
                                arrayList4 = arrayList2;
                                p = pVar;
                                i4 = 1;
                            }
                        }
                        com.bytedance.sdk.component.ia.d.p.dq.dq dqVar = new com.bytedance.sdk.component.ia.d.p.dq.dq(string, jSONObject);
                        dqVar.dq(ox());
                        dqVar.d(d());
                        com.bytedance.sdk.component.ia.d.ox.dq.dq(jSONObject, dqVar, this.f1907d, i3);
                        arrayList2 = arrayList4;
                        try {
                            arrayList2.add(dqVar);
                        } catch (Throwable th5) {
                            th = th5;
                            com.bytedance.sdk.component.ia.d.ox.ox.ox(th.getMessage(), this.f1907d);
                            arrayList4 = arrayList2;
                            p = pVar;
                            i4 = 1;
                        }
                        arrayList4 = arrayList2;
                        p = pVar;
                        i4 = 1;
                    }
                }
                arrayList = arrayList4;
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
            } catch (Throwable th6) {
                th = th6;
                arrayList2 = arrayList4;
            }
        } else {
            arrayList = arrayList4;
        }
        com.bytedance.sdk.component.ia.d.ox.ox.d(dq() + " query db actually size :" + arrayList.size(), this.f1907d);
        return arrayList;
    }

    @Override // com.bytedance.sdk.component.ia.d.dq.dq.d.ox
    public List<com.bytedance.sdk.component.ia.dq.d> dq(String str, int i) {
        com.bytedance.sdk.component.ia.d.p.d.dq dqVar = this.s;
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
        return com.bytedance.sdk.component.ia.d.ox.dq.ox(dVar);
    }

    public byte ox() {
        return (byte) 0;
    }

    public String ox(List<String> list) {
        dq();
        list.size();
        String dq = com.bytedance.sdk.component.ia.d.dq.dq.d.dq(getContext(), "DELETE FROM " + dq() + " WHERE " + dq(TTDownloadField.TT_ID, (List<?>) list, 1000, true), this.f1907d);
        com.bytedance.sdk.component.ia.d.ox.d.dq(com.bytedance.sdk.component.ia.d.d.d.dq.gh(), list.size(), this.f1907d);
        dq(list);
        return dq;
    }
}
