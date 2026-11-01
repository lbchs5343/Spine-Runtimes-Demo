package com.bytedance.sdk.openadsdk.core.p.ox;

import android.content.ContentValues;
import android.database.Cursor;
import com.bytedance.sdk.openadsdk.core.p.ox.s;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.List;

/* loaded from: classes3.dex */
public class d implements dq {

    /* renamed from: com.bytedance.sdk.openadsdk.core.p.ox.d$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[s.dq.d.values().length];
            dq = iArr;
            try {
                iArr[s.dq.d.TimeLast.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[s.dq.d.CustomPriority.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    private Cursor dq(s.dq dqVar, String str) {
        long currentTimeMillis = System.currentTimeMillis();
        int i = AnonymousClass1.dq[dqVar.p().ordinal()];
        return i != 1 ? i != 2 ? dqVar.d() ? com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(currentTimeMillis), str, "6607"}, null, null, null) : com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(currentTimeMillis), str}, null, null, null) : dqVar.d() ? com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(currentTimeMillis), str, "6607"}, null, null, "priority DESC") : com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(currentTimeMillis), str}, null, null, "priority DESC") : dqVar.d() ? com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(currentTimeMillis), str, "6607"}, null, null, "create_time DESC") : com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(currentTimeMillis), str}, null, null, "create_time DESC");
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void d(String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_using", (Integer) 0);
        com.bytedance.sdk.openadsdk.core.multipro.dq.dq.update(wp.getContext(), "meta_cache", contentValues, "rit =?", new String[]{str});
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void d(String str, s.dq dqVar) {
        long currentTimeMillis = System.currentTimeMillis();
        if (dqVar.d()) {
            com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), "meta_cache", "rit =? AND (save_version!=? OR expire_time <?)", new String[]{str, "6607", String.valueOf(currentTimeMillis)});
        } else {
            com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), "meta_cache", "rit =? AND expire_time <?", new String[]{str, String.valueOf(currentTimeMillis)});
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public s.d dq(String str, s.dq dqVar) {
        Cursor dq = dq(dqVar, str);
        if (dq == null) {
            return null;
        }
        try {
            if (dq.getCount() <= 0) {
                dq.close();
                return null;
            }
            dq.moveToFirst();
            s.d dVar = new s.d(dq.getString(dq.getColumnIndex("meta_data")), dq.getLong(dq.getColumnIndex("create_time")), dq.getLong(dq.getColumnIndex("expire_time")), dq.getString(dq.getColumnIndex("uuid")));
            dq.close();
            return dVar;
        } catch (Throwable th) {
            dq.close();
            throw th;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public s.d dq(String str, s.dq dqVar, List<String> list) {
        Cursor dq = dq(dqVar, str);
        if (dq == null) {
            return null;
        }
        while (dq.moveToNext()) {
            try {
                String string = dq.getString(dq.getColumnIndex("uuid"));
                if (string != null && list != null && list.contains(string)) {
                }
                s.d dVar = new s.d(dq.getString(dq.getColumnIndex("meta_data")), dq.getLong(dq.getColumnIndex("create_time")), dq.getLong(dq.getColumnIndex("expire_time")), string);
                dq.close();
                return dVar;
            } catch (Throwable th) {
                dq.close();
                throw th;
            }
        }
        dq.close();
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(s.dq dqVar) {
        com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), "meta_cache", "slot_type =?", new String[]{dqVar.dq()});
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(String str) {
        com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), "meta_cache", "rit =?", new String[]{str});
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(String str, s.d dVar, boolean z, long j, s.dq dqVar) {
        if (dqVar.ox() <= 0) {
            return;
        }
        Cursor query = com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "rit =?", new String[]{str}, null, null, "create_time ASC");
        if (query != null) {
            if (dqVar.ox() > 0 && query.getCount() >= dqVar.ox()) {
                query.moveToFirst();
                com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), "meta_cache", "rit=? AND uuid=?", new String[]{str, query.getString(query.getColumnIndex("uuid"))});
            }
            query.close();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("rit", str);
        contentValues.put("uuid", dVar.s);
        contentValues.put("create_time", Long.valueOf(dVar.dq));
        contentValues.put("meta_data", dVar.ox);
        contentValues.put("save_version", Integer.valueOf(dVar.p));
        contentValues.put("expire_time", Long.valueOf(dVar.f3377d));
        contentValues.put("slot_type", dqVar.dq());
        contentValues.put("is_using", Integer.valueOf(z ? 1 : 0));
        contentValues.put("priority", Long.valueOf(j));
        com.bytedance.sdk.openadsdk.core.multipro.dq.dq.insert(wp.getContext(), "meta_cache", contentValues);
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(String str, String str2) {
        com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), "meta_cache", "rit =? AND uuid =?", new String[]{str, str2});
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public void dq(String str, String str2, boolean z) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("is_using", Boolean.valueOf(z));
        com.bytedance.sdk.openadsdk.core.multipro.dq.dq.update(wp.getContext(), "meta_cache", contentValues, "rit =? AND uuid =?", new String[]{str, str2});
    }

    @Override // com.bytedance.sdk.openadsdk.core.p.ox.dq
    public boolean ox(String str, s.dq dqVar) {
        long currentTimeMillis = System.currentTimeMillis();
        Cursor query = dqVar.d() ? com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "expire_time >? AND rit =? AND save_version =? AND is_using = 0", new String[]{String.valueOf(currentTimeMillis), str, "6607"}, null, null, null) : com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), "meta_cache", null, "expire_time >? AND rit =? AND is_using = 0", new String[]{String.valueOf(currentTimeMillis), str}, null, null, null);
        if (query != null) {
            query.getCount();
            r12 = query.getCount() > 0;
            query.close();
        }
        return r12;
    }
}
