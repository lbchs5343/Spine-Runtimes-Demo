package com.ss.android.socialbase.downloader.d;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.text.TextUtils;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.d.ox;
import com.ss.android.socialbase.downloader.downloader.no;
import com.ss.android.socialbase.downloader.downloader.r;
import com.ss.android.socialbase.downloader.iw.kk;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.abn;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import org.json.JSONArray;

/* loaded from: classes.dex */
public class s extends ox.dq implements r {

    /* renamed from: d, reason: collision with root package name */
    private static volatile SQLiteDatabase f9325d;
    d dq;
    private volatile boolean iw;
    private mn ox;
    private mn p;
    private mn s;

    public s() {
        this(false);
    }

    public s(boolean z) {
        this.dq = null;
        if (z) {
            this.iw = false;
            dq();
        }
    }

    private void d(DownloadInfo downloadInfo, SQLiteStatement sQLiteStatement) {
        if (downloadInfo == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                downloadInfo.bindValue(sQLiteStatement);
                sQLiteStatement.bindLong(downloadInfo.getBindValueCount() + 1, downloadInfo.getId());
                sQLiteStatement.execute();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2, int i3, int i4, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("chunkIndex", Integer.valueOf(i4));
                f9325d.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?", new String[]{Integer.toString(i), Integer.toString(i2), Integer.toString(i3)});
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2, int i3, long j, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("curOffset", Long.valueOf(j));
                f9325d.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?", new String[]{Integer.toString(i), Integer.toString(i2), Integer.toString(i3)});
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2, long j, SQLiteStatement sQLiteStatement) {
        try {
            synchronized (sQLiteStatement) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("curOffset", Long.valueOf(j));
                f9325d.update("downloadChunk", contentValues, "_id = ? AND chunkIndex = ?", new String[]{Integer.toString(i), Integer.toString(i2)});
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, ContentValues contentValues) {
        int i2 = 10;
        while (f9325d.isDbLockedByCurrentThread() && i2 - 1 >= 0) {
            try {
                try {
                    Thread.sleep(5L);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
                return;
            }
        }
        try {
            f9325d.update("downloader", contentValues, "_id = ? ", new String[]{String.valueOf(i)});
        } catch (Throwable th3) {
            th3.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, SQLiteStatement sQLiteStatement) {
        if (sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                sQLiteStatement.bindLong(1, i);
                sQLiteStatement.execute();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(DownloadInfo downloadInfo, SQLiteStatement sQLiteStatement) {
        if (downloadInfo == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                downloadInfo.bindValue(sQLiteStatement);
                sQLiteStatement.executeInsert();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.ss.android.socialbase.downloader.model.d dVar, SQLiteStatement sQLiteStatement) {
        if (dVar == null || sQLiteStatement == null) {
            return;
        }
        try {
            synchronized (sQLiteStatement) {
                dVar.dq(sQLiteStatement);
                sQLiteStatement.executeInsert();
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(List<DownloadInfo> list) {
        if (list == null) {
            return;
        }
        try {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null && downloadInfo.isSavePathRedirected()) {
                    com.ss.android.socialbase.downloader.kk.iw.d(downloadInfo);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(List<DownloadInfo> list, List<Integer> list2, SparseArray<DownloadInfo> sparseArray, SparseArray<DownloadInfo> sparseArray2, SparseArray<List<com.ss.android.socialbase.downloader.model.d>> sparseArray3) {
        int size = sparseArray.size();
        if (size < 0 || f9325d == null) {
            return;
        }
        synchronized (f9325d) {
            try {
                kk();
                if (!list.isEmpty()) {
                    if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("clear_invalid_task_error")) {
                        String[] strArr = new String[list.size()];
                        for (int i = 0; i < list.size(); i++) {
                            strArr[i] = String.valueOf(list.get(i));
                        }
                        String str = "CAST(_id AS TEXT) IN (" + new String(new char[list.size() - 1]).replace("\u0000", "?,") + "?)";
                        f9325d.delete("downloader", str, strArr);
                        f9325d.delete("downloadChunk", str, strArr);
                    } else {
                        String join = TextUtils.join(", ", list2);
                        f9325d.delete("downloader", "_id IN (?)", new String[]{join});
                        f9325d.delete("downloadChunk", "_id IN (?)", new String[]{join});
                    }
                }
                for (int i2 = 0; i2 < size; i2++) {
                    int keyAt = sparseArray.keyAt(i2);
                    DownloadInfo downloadInfo = sparseArray.get(keyAt);
                    f9325d.delete("downloader", "_id = ?", new String[]{String.valueOf(keyAt)});
                    f9325d.insert("downloader", null, downloadInfo.toContentValues());
                    if (downloadInfo.getChunkCount() > 1) {
                        List<com.ss.android.socialbase.downloader.model.d> ox = ox(keyAt);
                        if (ox.size() > 0) {
                            f9325d.delete("downloadChunk", "_id = ?", new String[]{String.valueOf(keyAt)});
                            for (com.ss.android.socialbase.downloader.model.d dVar : ox) {
                                dVar.d(downloadInfo.getId());
                                f9325d.insert("downloadChunk", null, dVar.dq());
                            }
                        }
                    }
                }
                if (sparseArray2 != null && sparseArray3 != null) {
                    int size2 = sparseArray2.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        int id = sparseArray2.valueAt(i3).getId();
                        List<com.ss.android.socialbase.downloader.model.d> dq = com.ss.android.socialbase.downloader.kk.iw.dq(ox(id));
                        if (dq != null && dq.size() > 0) {
                            sparseArray3.put(id, dq);
                        }
                    }
                }
                f9325d.setTransactionSuccessful();
            } finally {
                try {
                } finally {
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ia() {
        if (f9325d == null) {
            synchronized (s.class) {
                try {
                    if (f9325d == null) {
                        f9325d = dq.dq().getWritableDatabase();
                        this.ox = new mn(f9325d, "downloader", com.ss.android.socialbase.downloader.constants.ox.dq, com.ss.android.socialbase.downloader.constants.ox.f9315d);
                        this.p = new mn(f9325d, "downloadChunk", com.ss.android.socialbase.downloader.constants.ox.ox, com.ss.android.socialbase.downloader.constants.ox.p);
                        this.s = new mn(f9325d, "segments", com.ss.android.socialbase.downloader.constants.ox.s, com.ss.android.socialbase.downloader.constants.ox.iw);
                    }
                } catch (Throwable th) {
                    th.printStackTrace();
                } finally {
                }
            }
        }
    }

    private void kk() {
        f9325d.beginTransaction();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void no() {
        try {
            kk();
            f9325d.delete("downloader", null, null);
            f9325d.delete("downloadChunk", null, null);
            f9325d.setTransactionSuccessful();
        } catch (Throwable th) {
            try {
                th.printStackTrace();
            } finally {
                o();
            }
        }
    }

    private void o() {
        try {
            if (f9325d == null || !f9325d.inTransaction()) {
                return;
            }
            f9325d.endTransaction();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    private void ox(final DownloadInfo downloadInfo) {
        ia();
        if (f9325d == null || this.ox == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.9
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s sVar = s.this;
                    sVar.dq(downloadInfo, sVar.ox.dq());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        try {
            if (!dq(downloadInfo.getId())) {
                ox(downloadInfo);
                return;
            }
            mn mnVar = this.ox;
            if (mnVar == null) {
                return;
            }
            try {
                d(downloadInfo, mnVar.ox());
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
        }
    }

    private void update(final int i, final ContentValues contentValues) {
        ia();
        if (f9325d == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.3
            @Override // java.lang.Runnable
            public void run() {
                s.this.dq(i, contentValues);
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo d(int i) {
        Cursor cursor;
        ia();
        if (f9325d != null) {
            try {
                cursor = f9325d.rawQuery("SELECT * FROM downloader WHERE _id = ?", new String[]{Integer.toString(i)});
            } catch (Throwable th) {
                th = th;
                cursor = null;
            }
            try {
                if (cursor.moveToNext()) {
                    DownloadInfo downloadInfo = new DownloadInfo(cursor);
                    com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                    return downloadInfo;
                }
                com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
            } catch (Throwable th2) {
                th = th2;
                try {
                    th.printStackTrace();
                    com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                    return null;
                } catch (Throwable th3) {
                    com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                    throw th3;
                }
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo d(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-1));
        contentValues.put("curBytes", Long.valueOf(j));
        if (j > 0) {
            contentValues.put("isFirstDownload", (Integer) 0);
        }
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public List<DownloadInfo> d() {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public List<DownloadInfo> d(String str) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        try {
            p(i);
            if (list != null) {
                for (com.ss.android.socialbase.downloader.model.d dVar : list) {
                    if (dVar != null) {
                        dq(dVar);
                        if (dVar.iw()) {
                            Iterator<com.ss.android.socialbase.downloader.model.d> it = dVar.mn().iterator();
                            while (it.hasNext()) {
                                dq(it.next());
                            }
                        }
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void d(DownloadInfo downloadInfo) {
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void d(com.ss.android.socialbase.downloader.model.d dVar) {
        dq(dVar);
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo dq(int i, int i2) {
        ia();
        if (f9325d == null) {
            return null;
        }
        int i3 = 10;
        while (f9325d.isDbLockedByCurrentThread() && i3 - 1 >= 0) {
            try {
                try {
                    Thread.sleep(5L);
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            } catch (Throwable th2) {
                th2.printStackTrace();
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("chunkCount", Integer.valueOf(i2));
        f9325d.update("downloader", contentValues, "_id = ? ", new String[]{Integer.toString(i)});
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo dq(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 4);
        contentValues.put("curBytes", Long.valueOf(j));
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo dq(int i, long j, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 3);
        contentValues.put("totalBytes", Long.valueOf(j));
        contentValues.put("eTag", str);
        if (!TextUtils.isEmpty(str2)) {
            contentValues.put(abn.EXTRA_UA_APP_NAME, str2);
        }
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public List<DownloadInfo> dq(String str) {
        ia();
        ArrayList arrayList = new ArrayList();
        if (f9325d == null) {
            return arrayList;
        }
        Cursor cursor = null;
        try {
            cursor = f9325d.rawQuery("SELECT * FROM downloader WHERE url = ?", new String[]{str});
            if (cursor.moveToNext()) {
                arrayList.add(new DownloadInfo(cursor));
            }
            com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
            return arrayList;
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                return arrayList;
            } catch (Throwable th2) {
                com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                throw th2;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void dq() {
        dq(new SparseArray<>(), new SparseArray<>(), (p) null);
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void dq(final int i, final int i2, final int i3, final int i4) {
        ia();
        if (i == 0 || i3 < 0 || i4 == i2 || i4 < 0 || f9325d == null || this.p == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s.this.dq(i, i2, i3, i4, s.this.p.ox());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void dq(final int i, final int i2, final int i3, final long j) {
        ia();
        if (i == 0 || i2 < 0 || i3 < 0 || j < 0 || f9325d == null || this.p == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.7
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s.this.dq(i, i2, i3, j, s.this.p.ox());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void dq(final int i, final int i2, final long j) {
        ia();
        if (i == 0 || i2 < 0 || j < 0 || f9325d == null || this.p == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.6
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s.this.dq(i, i2, j, s.this.p.ox());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
    }

    public void dq(SparseArray<DownloadInfo> sparseArray, SparseArray<List<com.ss.android.socialbase.downloader.model.d>> sparseArray2) {
        try {
            HashMap dq = com.ss.android.socialbase.downloader.kk.iw.dq(sparseArray);
            HashMap dq2 = com.ss.android.socialbase.downloader.kk.iw.dq(sparseArray2);
            d dVar = this.dq;
            if (dVar != null) {
                dVar.dq(dq, dq2);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.r
    public void dq(final SparseArray<DownloadInfo> sparseArray, final SparseArray<List<com.ss.android.socialbase.downloader.model.d>> sparseArray2, final p pVar) {
        try {
            Runnable runnable = new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.1
                /* JADX WARN: Code restructure failed: missing block: B:140:0x027e, code lost:
                
                    if (r0 == null) goto L86;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:146:0x0287, code lost:
                
                    if (r0 == null) goto L86;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:185:0x0342, code lost:
                
                    if (r0 == null) goto L170;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:186:0x0344, code lost:
                
                    r0.dq();
                    r18.p.iw = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:187:0x034c, code lost:
                
                    r18.p.dq(r2, r3);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:188:0x035e, code lost:
                
                    throw r0;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:194:0x035b, code lost:
                
                    if (r0 == null) goto L170;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:89:0x01aa, code lost:
                
                    if (r0 != null) goto L85;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:90:0x01ac, code lost:
                
                    r0.dq();
                    r18.p.iw = true;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:91:0x01b4, code lost:
                
                    r18.p.dq(r2, r3);
                 */
                /* JADX WARN: Code restructure failed: missing block: B:92:0x01bd, code lost:
                
                    return;
                 */
                /* JADX WARN: Code restructure failed: missing block: B:98:0x01c3, code lost:
                
                    if (r0 == null) goto L86;
                 */
                /* JADX WARN: Removed duplicated region for block: B:34:0x00dd A[SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:47:0x00cd A[SYNTHETIC] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void run() {
                    p pVar2;
                    p pVar3;
                    boolean z;
                    int i;
                    s.this.ia();
                    if (s.f9325d == null) {
                        return;
                    }
                    no bl = com.ss.android.socialbase.downloader.downloader.ox.bl();
                    SparseArray sparseArray3 = new SparseArray();
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    Cursor cursor = null;
                    int i2 = 0;
                    try {
                        cursor = s.f9325d.rawQuery("SELECT * FROM downloader", null);
                        while (cursor.moveToNext()) {
                            DownloadInfo downloadInfo = new DownloadInfo(cursor);
                            downloadInfo.setStatusAtDbInit(downloadInfo.getRealStatus());
                            if (downloadInfo.isCanResumeFromBreakPointStatus()) {
                                downloadInfo.setStatus(-5);
                                if (com.ss.android.socialbase.downloader.mn.dq.ox().d("status_not_update_to_db", true)) {
                                    sparseArray3.put(downloadInfo.getId(), downloadInfo);
                                }
                            }
                            if (!TextUtils.isEmpty(downloadInfo.getSavePath()) && !TextUtils.isEmpty(downloadInfo.getName())) {
                                if (downloadInfo.getStatus() != 1 || downloadInfo.getCurBytes() > 0) {
                                    if (downloadInfo.getStatus() != -3 && downloadInfo.getStatus() != 11 && !downloadInfo.isFileDataValid()) {
                                        downloadInfo.reset();
                                    }
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (downloadInfo.getStatus() == 11) {
                                    downloadInfo.setStatus(-5);
                                }
                                if (com.ss.android.socialbase.downloader.kk.iw.dq(downloadInfo.getStatus(), downloadInfo.getSavePath(), downloadInfo.getName())) {
                                    if (!com.ss.android.socialbase.downloader.kk.dq.dq(33554432)) {
                                        downloadInfo.erase();
                                    }
                                }
                                if (z) {
                                    int id = downloadInfo.getId();
                                    if (bl != null) {
                                        String taskKey = downloadInfo.getTaskKey();
                                        if (TextUtils.isEmpty(taskKey)) {
                                            taskKey = downloadInfo.getUrl();
                                        }
                                        i = bl.dq(taskKey, downloadInfo.getSavePath());
                                    } else {
                                        i = 0;
                                    }
                                    if (i != id) {
                                        downloadInfo.setId(i);
                                        sparseArray3.put(id, downloadInfo);
                                    }
                                    sparseArray.put(downloadInfo.getId(), downloadInfo);
                                } else {
                                    arrayList.add(Integer.valueOf(downloadInfo.getId()));
                                    arrayList2.add(downloadInfo);
                                }
                            }
                            z = true;
                            if (z) {
                            }
                        }
                        com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                        s.this.dq(arrayList2);
                        s.this.dq(arrayList2, arrayList, (SparseArray<DownloadInfo>) sparseArray3, (SparseArray<DownloadInfo>) sparseArray, (SparseArray<List<com.ss.android.socialbase.downloader.model.d>>) sparseArray2);
                        try {
                            ArrayList arrayList3 = new ArrayList();
                            if (sparseArray != null) {
                                while (i2 < sparseArray.size()) {
                                    int keyAt = sparseArray.keyAt(i2);
                                    if (keyAt != 0) {
                                        DownloadInfo downloadInfo2 = (DownloadInfo) sparseArray.get(keyAt);
                                        if (com.ss.android.socialbase.downloader.kk.dq.dq(8192)) {
                                            if (downloadInfo2 != null && !downloadInfo2.isChunkBreakpointAvailable() && downloadInfo2.getStatus() != -3) {
                                                arrayList3.add(Integer.valueOf(downloadInfo2.getId()));
                                                sparseArray2.remove(downloadInfo2.getId());
                                            }
                                        } else if (downloadInfo2 != null && !downloadInfo2.isChunkBreakpointAvailable()) {
                                            arrayList3.add(Integer.valueOf(downloadInfo2.getId()));
                                            sparseArray2.remove(downloadInfo2.getId());
                                        }
                                    }
                                    Iterator it = arrayList3.iterator();
                                    while (it.hasNext()) {
                                        sparseArray.remove(((Integer) it.next()).intValue());
                                    }
                                    i2++;
                                }
                            }
                            pVar3 = pVar;
                        } catch (Throwable th) {
                            try {
                                th.printStackTrace();
                                pVar3 = pVar;
                            } finally {
                            }
                        }
                    } catch (Throwable th2) {
                        try {
                            th2.printStackTrace();
                            com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                            s.this.dq(arrayList2);
                            s.this.dq(arrayList2, arrayList, (SparseArray<DownloadInfo>) sparseArray3, (SparseArray<DownloadInfo>) sparseArray, (SparseArray<List<com.ss.android.socialbase.downloader.model.d>>) sparseArray2);
                            try {
                                ArrayList arrayList4 = new ArrayList();
                                if (sparseArray != null) {
                                    while (i2 < sparseArray.size()) {
                                        int keyAt2 = sparseArray.keyAt(i2);
                                        if (keyAt2 != 0) {
                                            DownloadInfo downloadInfo3 = (DownloadInfo) sparseArray.get(keyAt2);
                                            if (com.ss.android.socialbase.downloader.kk.dq.dq(8192)) {
                                                if (downloadInfo3 != null && !downloadInfo3.isChunkBreakpointAvailable() && downloadInfo3.getStatus() != -3) {
                                                    arrayList4.add(Integer.valueOf(downloadInfo3.getId()));
                                                    sparseArray2.remove(downloadInfo3.getId());
                                                }
                                            } else if (downloadInfo3 != null && !downloadInfo3.isChunkBreakpointAvailable()) {
                                                arrayList4.add(Integer.valueOf(downloadInfo3.getId()));
                                                sparseArray2.remove(downloadInfo3.getId());
                                            }
                                        }
                                        Iterator it2 = arrayList4.iterator();
                                        while (it2.hasNext()) {
                                            sparseArray.remove(((Integer) it2.next()).intValue());
                                        }
                                        i2++;
                                    }
                                }
                                pVar3 = pVar;
                            } catch (Throwable th3) {
                                try {
                                    th3.printStackTrace();
                                    pVar3 = pVar;
                                } finally {
                                }
                            }
                        } catch (Throwable th4) {
                            com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                            s.this.dq(arrayList2);
                            s.this.dq(arrayList2, arrayList, (SparseArray<DownloadInfo>) sparseArray3, (SparseArray<DownloadInfo>) sparseArray, (SparseArray<List<com.ss.android.socialbase.downloader.model.d>>) sparseArray2);
                            try {
                                ArrayList arrayList5 = new ArrayList();
                                if (sparseArray != null) {
                                    while (i2 < sparseArray.size()) {
                                        int keyAt3 = sparseArray.keyAt(i2);
                                        if (keyAt3 != 0) {
                                            DownloadInfo downloadInfo4 = (DownloadInfo) sparseArray.get(keyAt3);
                                            if (com.ss.android.socialbase.downloader.kk.dq.dq(8192)) {
                                                if (downloadInfo4 != null && !downloadInfo4.isChunkBreakpointAvailable() && downloadInfo4.getStatus() != -3) {
                                                    arrayList5.add(Integer.valueOf(downloadInfo4.getId()));
                                                    sparseArray2.remove(downloadInfo4.getId());
                                                }
                                            } else if (downloadInfo4 != null && !downloadInfo4.isChunkBreakpointAvailable()) {
                                                arrayList5.add(Integer.valueOf(downloadInfo4.getId()));
                                                sparseArray2.remove(downloadInfo4.getId());
                                            }
                                        }
                                        Iterator it3 = arrayList5.iterator();
                                        while (it3.hasNext()) {
                                            sparseArray.remove(((Integer) it3.next()).intValue());
                                        }
                                        i2++;
                                    }
                                }
                                pVar2 = pVar;
                            } catch (Throwable th5) {
                                try {
                                    th5.printStackTrace();
                                    pVar2 = pVar;
                                } finally {
                                    if (pVar != null) {
                                        pVar.dq();
                                        s.this.iw = true;
                                    }
                                    s.this.dq(sparseArray, sparseArray2);
                                }
                            }
                        }
                    }
                }
            };
            ExecutorService cd = com.ss.android.socialbase.downloader.downloader.ox.cd();
            if (cd != null) {
                cd.execute(runnable);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void dq(d dVar) {
        this.dq = dVar;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void dq(final com.ss.android.socialbase.downloader.model.d dVar) {
        ia();
        if (f9325d == null || this.p == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s.this.dq(dVar, s.this.p.dq());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public boolean dq(int i) {
        try {
            return d(i) != null;
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean dq(int i, Map<Long, kk> map) {
        long currentTimeMillis = System.currentTimeMillis();
        ia();
        if (f9325d == null) {
            return false;
        }
        JSONArray jSONArray = new JSONArray();
        try {
            for (Long l : map.keySet()) {
                l.longValue();
                jSONArray.put(map.get(l).no());
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        SQLiteStatement p = this.s.p();
        synchronized (p) {
            p.clearBindings();
            p.bindLong(1, i);
            p.bindString(2, jSONArray.toString());
            p.execute();
        }
        com.ss.android.socialbase.downloader.ox.dq.d("SqlDownloadCache", "updateSegments cost=" + com.ss.android.socialbase.downloader.kk.iw.ox(currentTimeMillis));
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public boolean dq(final DownloadInfo downloadInfo) {
        ia();
        if (downloadInfo == null || f9325d == null) {
            return false;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.10
            @Override // java.lang.Runnable
            public void run() {
                s.this.p(downloadInfo);
            }
        });
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo ia(int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 5);
        contentValues.put("isFirstDownload", (Integer) 0);
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public Map<Long, kk> ig(int i) {
        Cursor cursor;
        ia();
        if (f9325d != null) {
            try {
                cursor = f9325d.rawQuery("SELECT * FROM segments WHERE _id = ?", new String[]{Integer.toString(i)});
            } catch (Throwable th) {
                th = th;
                cursor = null;
            }
            try {
                if (cursor.moveToNext()) {
                    int columnIndex = cursor.getColumnIndex("info");
                    String string = columnIndex >= 0 ? cursor.getString(columnIndex) : null;
                    HashMap hashMap = new HashMap();
                    JSONArray jSONArray = new JSONArray(string);
                    for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                        kk kkVar = new kk(jSONArray.getJSONObject(i2));
                        hashMap.put(Long.valueOf(kkVar.ox()), kkVar);
                    }
                    com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                    return hashMap;
                }
                com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
            } catch (Throwable th2) {
                th = th2;
                try {
                    th.printStackTrace();
                    com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                    return null;
                } catch (Throwable th3) {
                    com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                    throw th3;
                }
            }
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public boolean iw(final int i) {
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.11
            @Override // java.lang.Runnable
            public void run() {
                s.this.s(i);
                s.this.p(i);
                s.this.mp(i);
            }
        });
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo kk(int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) 1);
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo mn(int i) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void mp(int i) {
        ia();
        if (f9325d == null) {
            return;
        }
        try {
            dq(i, this.s.d());
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    /* renamed from: no, reason: merged with bridge method [inline-methods] */
    public ArrayList<kk> q(int i) {
        Map<Long, kk> ig = ig(i);
        if (ig == null || ig.isEmpty()) {
            return null;
        }
        return new ArrayList<>(ig.values());
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo o(int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-7));
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo ox(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-3));
        contentValues.put("curBytes", Long.valueOf(j));
        contentValues.put("isFirstDownload", (Integer) 0);
        contentValues.put("isFirstSuccess", (Integer) 0);
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public List<com.ss.android.socialbase.downloader.model.d> ox(int i) {
        ArrayList arrayList = new ArrayList();
        ia();
        if (f9325d == null) {
            return arrayList;
        }
        Cursor cursor = null;
        try {
            cursor = f9325d.rawQuery("SELECT * FROM downloadChunk WHERE _id = ?", new String[]{Integer.toString(i)});
            while (cursor.moveToNext()) {
                arrayList.add(new com.ss.android.socialbase.downloader.model.d(cursor));
            }
            com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
            return arrayList;
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                return arrayList;
            } catch (Throwable th2) {
                com.ss.android.socialbase.downloader.kk.iw.dq(cursor);
                throw th2;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public List<DownloadInfo> ox(String str) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void ox() {
        ia();
        if (f9325d == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.2
            @Override // java.lang.Runnable
            public void run() {
                s.this.no();
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo p(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-2));
        contentValues.put("curBytes", Long.valueOf(j));
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public List<DownloadInfo> p(String str) {
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public void p(final int i) {
        ia();
        if (f9325d == null || this.p == null) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ox(new Runnable() { // from class: com.ss.android.socialbase.downloader.d.s.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    s.this.dq(i, s.this.p.d());
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public boolean p() {
        return this.iw;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public DownloadInfo s(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Integer) (-4));
        contentValues.put("curBytes", Long.valueOf(j));
        update(i, contentValues);
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public boolean s() {
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.d.ox
    public boolean s(int i) {
        mn mnVar;
        ia();
        if (f9325d != null && (mnVar = this.ox) != null) {
            try {
                dq(i, mnVar.d());
                return true;
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
        return false;
    }
}
