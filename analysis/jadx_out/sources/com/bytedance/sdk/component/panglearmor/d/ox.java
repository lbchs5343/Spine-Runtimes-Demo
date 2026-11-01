package com.bytedance.sdk.component.panglearmor.d;

import android.hardware.SensorManager;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {
    public static float[] dq(List<Float> list, List<Float> list2, List<Float> list3, List<Float> list4, List<Float> list5, List<Float> list6) {
        int min = Math.min(list.size(), list4.size());
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        char c2 = 0;
        float f3 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        float f4 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        int i = 0;
        while (i < min) {
            float floatValue = list.get(i).floatValue();
            float floatValue2 = list2.get(i).floatValue();
            float floatValue3 = list3.get(i).floatValue();
            float[] fArr = new float[3];
            fArr[c2] = floatValue;
            fArr[1] = floatValue2;
            fArr[2] = floatValue3;
            float[] fArr2 = new float[9];
            SensorManager.getRotationMatrix(fArr2, null, fArr, new float[]{list4.get(i).floatValue(), list5.get(i).floatValue(), list6.get(i).floatValue()});
            SensorManager.getOrientation(fArr2, new float[3]);
            f2 = ((((float) Math.toDegrees(r7[0])) + 360.0f) % 360.0f) + f2;
            f3 = ((((float) Math.toDegrees(r7[1])) + 360.0f) % 360.0f) + f3;
            f4 += (((float) Math.toDegrees(r7[2])) + 360.0f) % 360.0f;
            i++;
            c2 = 0;
        }
        float f5 = min;
        return new float[]{f2 / f5, f3 / f5, f4 / f5};
    }

    public static int[] dq(LinkedList<JSONObject> linkedList, int i) {
        int[] iArr = new int[i];
        if (linkedList.size() > 0) {
            int optLong = (int) (((linkedList.getLast().optLong("t", 0L) / 1000) / 60) / 60);
            Iterator<JSONObject> it = linkedList.iterator();
            while (it.hasNext()) {
                int optLong2 = optLong - ((int) (((it.next().optLong("t", 0L) / 1000) / 60) / 60));
                if (optLong2 >= 0 && optLong2 < i) {
                    iArr[optLong2] = iArr[optLong2] + 1;
                }
            }
        }
        return iArr;
    }

    public static int[] dq(double[] dArr, long j) {
        if (j <= 0 || j > 360) {
            return new int[0];
        }
        int[] iArr = new int[(int) (360 / j)];
        for (double d2 : dArr) {
            int i = (int) (d2 / j);
            iArr[i] = iArr[i] + 1;
        }
        return iArr;
    }

    public static int[][] dq(List<JSONObject> list, long j, long j2) throws JSONException {
        int size = list.size();
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        double[] dArr3 = new double[size];
        for (int i = 0; i < size; i++) {
            JSONArray optJSONArray = list.get(i).optJSONArray("val");
            if (optJSONArray != null && optJSONArray.length() == 3) {
                dArr[i] = optJSONArray.getDouble(0);
                dArr2[i] = optJSONArray.getDouble(1);
                dArr3[i] = optJSONArray.getDouble(2);
            }
        }
        return new int[][]{dq(dArr, j), dq(dArr2, j2), dq(dArr3, j2)};
    }
}
