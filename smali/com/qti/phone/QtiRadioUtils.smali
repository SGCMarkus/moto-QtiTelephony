.class Lcom/qti/phone/QtiRadioUtils;
.super Ljava/lang/Object;
.source "QtiRadioUtils.java"


# direct methods
.method public static synthetic $r8$lambda$VovuGZRsq_GSwE4OB4lz54btpyg(Landroid/hardware/radio/V1_6/QosSession;)Lcom/qti/extphone/QosBearerSession;
    .locals 0

    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->lambda$createQosParametersResultFromQtiRadioHalStruct$0(Landroid/hardware/radio/V1_6/QosSession;)Lcom/qti/extphone/QosBearerSession;

    move-result-object p0

    return-object p0
.end method

.method public static convertHalCdmaSignalStrength(Lvendor/qti/hardware/radio/qtiradio/CdmaSignalStrength;Lvendor/qti/hardware/radio/qtiradio/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;
    .locals 7

    .line 355
    new-instance v6, Landroid/telephony/CellSignalStrengthCdma;

    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/CdmaSignalStrength;->dbm:I

    neg-int v1, v0

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/CdmaSignalStrength;->ecio:I

    neg-int v2, p0

    iget p0, p1, Lvendor/qti/hardware/radio/qtiradio/EvdoSignalStrength;->dbm:I

    neg-int v3, p0

    iget p0, p1, Lvendor/qti/hardware/radio/qtiradio/EvdoSignalStrength;->ecio:I

    neg-int v4, p0

    iget v5, p1, Lvendor/qti/hardware/radio/qtiradio/EvdoSignalStrength;->signalNoiseRatio:I

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/CellSignalStrengthCdma;-><init>(IIIII)V

    return-object v6
.end method

.method public static convertHalCellIdentityCdma(Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;
    .locals 9

    .line 218
    new-instance v8, Landroid/telephony/CellIdentityCdma;

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;->networkId:I

    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;->systemId:I

    iget v3, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;->baseStationId:I

    iget v4, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;->longitude:I

    iget v5, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;->latitude:I

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;->operatorNames:Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;

    iget-object v6, p0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v7, p0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaShort:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellIdentityCdma;-><init>(IIIIILjava/lang/String;Ljava/lang/String;)V

    return-object v8
.end method

.method public static convertHalCellIdentityGsm(Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;
    .locals 11

    .line 206
    new-instance v10, Landroid/telephony/CellIdentityGsm;

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;->lac:I

    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;->cid:I

    iget v3, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;->arfcn:I

    .line 207
    iget-byte v0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;->bsic:B

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    const v0, 0x7fffffff

    :cond_0
    move v4, v0

    iget-object v5, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;->mcc:Ljava/lang/String;

    iget-object v6, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;->mnc:Ljava/lang/String;

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;->operatorNames:Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;

    iget-object v7, p0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, p0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaShort:Ljava/lang/String;

    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/telephony/CellIdentityGsm;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    return-object v10
.end method

.method public static convertHalCellIdentityLte(Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;)Landroid/telephony/CellIdentityLte;
    .locals 14

    .line 229
    new-instance v13, Landroid/telephony/CellIdentityLte;

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->ci:I

    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->pci:I

    iget v3, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->tac:I

    iget v4, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->earfcn:I

    iget-object v5, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->bands:[I

    iget v6, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->bandwidth:I

    iget-object v7, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->mcc:Ljava/lang/String;

    iget-object v8, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->mnc:Ljava/lang/String;

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->operatorNames:Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;

    iget-object v9, v0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v10, v0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->additionalPlmns:[Ljava/lang/String;

    .line 231
    invoke-static {v0}, Lcom/qti/phone/QtiRadioUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;->csgInfo:Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;

    .line 232
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalClosedSubscriberGroupInfo(Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v12

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Landroid/telephony/CellIdentityLte;-><init>(IIII[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v13
.end method

.method public static convertHalCellIdentityNr(Lvendor/qti/hardware/radio/qtiradio/QtiCellIdentityNr;)Landroid/telephony/CellIdentityNr;
    .locals 24

    move-object/from16 v0, p0

    .line 270
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/QtiCellIdentityNr;->snpnInfo:Lvendor/qti/hardware/radio/qtiradio/SnpnInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 271
    new-instance v1, Landroid/telephony/SnpnInfo;

    iget-object v3, v0, Lvendor/qti/hardware/radio/qtiradio/QtiCellIdentityNr;->snpnInfo:Lvendor/qti/hardware/radio/qtiradio/SnpnInfo;

    iget-object v4, v3, Lvendor/qti/hardware/radio/qtiradio/SnpnInfo;->nid:[B

    iget-object v5, v3, Lvendor/qti/hardware/radio/qtiradio/SnpnInfo;->mcc:Ljava/lang/String;

    iget-object v6, v3, Lvendor/qti/hardware/radio/qtiradio/SnpnInfo;->mnc:Ljava/lang/String;

    iget-object v7, v3, Lvendor/qti/hardware/radio/qtiradio/SnpnInfo;->operatorNumeric:Ljava/lang/String;

    iget v8, v3, Lvendor/qti/hardware/radio/qtiradio/SnpnInfo;->signalStrength:I

    iget v9, v3, Lvendor/qti/hardware/radio/qtiradio/SnpnInfo;->signalQuality:I

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Landroid/telephony/SnpnInfo;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    move-object/from16 v22, v1

    goto :goto_0

    :cond_0
    move-object/from16 v22, v2

    .line 275
    :goto_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/QtiCellIdentityNr;->cagInfo:Lvendor/qti/hardware/radio/qtiradio/CagInfo;

    if-eqz v1, :cond_1

    .line 276
    new-instance v2, Landroid/telephony/CagInfo;

    iget-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/QtiCellIdentityNr;->cagInfo:Lvendor/qti/hardware/radio/qtiradio/CagInfo;

    iget-object v4, v1, Lvendor/qti/hardware/radio/qtiradio/CagInfo;->cagName:Ljava/lang/String;

    iget-wide v5, v1, Lvendor/qti/hardware/radio/qtiradio/CagInfo;->cagId:J

    iget-boolean v7, v1, Lvendor/qti/hardware/radio/qtiradio/CagInfo;->cagOnlyAccess:Z

    iget-boolean v8, v1, Lvendor/qti/hardware/radio/qtiradio/CagInfo;->cagInAllowedList:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/telephony/CagInfo;-><init>(Ljava/lang/String;JZZ)V

    :cond_1
    move-object/from16 v23, v2

    .line 279
    new-instance v1, Landroid/telephony/CellIdentityNr;

    iget-object v0, v0, Lvendor/qti/hardware/radio/qtiradio/QtiCellIdentityNr;->cNr:Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;

    iget v11, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->pci:I

    iget v12, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->tac:I

    iget v13, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->nrarfcn:I

    iget-object v14, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->bands:[I

    iget-object v15, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->mcc:Ljava/lang/String;

    iget-object v2, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->mnc:Ljava/lang/String;

    iget-wide v3, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->nci:J

    iget-object v5, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->operatorNames:Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;

    iget-object v6, v5, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v5, v5, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v0, v0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityNr;->additionalPlmns:[Ljava/lang/String;

    .line 282
    invoke-static {v0}, Lcom/qti/phone/QtiRadioUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    move-object v10, v1

    move-object/from16 v16, v2

    move-wide/from16 v17, v3

    move-object/from16 v19, v6

    move-object/from16 v20, v5

    invoke-direct/range {v10 .. v23}, Landroid/telephony/CellIdentityNr;-><init>(III[ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/SnpnInfo;Landroid/telephony/CagInfo;)V

    return-object v1
.end method

.method public static convertHalCellIdentityTdscdma(Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;
    .locals 12

    .line 255
    new-instance v11, Landroid/telephony/CellIdentityTdscdma;

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->mcc:Ljava/lang/String;

    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->mnc:Ljava/lang/String;

    iget v3, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->lac:I

    iget v4, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->cid:I

    iget v5, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->cpid:I

    iget v6, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->uarfcn:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->operatorNames:Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;

    iget-object v7, v0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, v0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->additionalPlmns:[Ljava/lang/String;

    .line 257
    invoke-static {v0}, Lcom/qti/phone/QtiRadioUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;->csgInfo:Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;

    .line 258
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalClosedSubscriberGroupInfo(Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityTdscdma;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11
.end method

.method public static convertHalCellIdentityWcdma(Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;
    .locals 12

    .line 242
    new-instance v11, Landroid/telephony/CellIdentityWcdma;

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->lac:I

    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->cid:I

    iget v3, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->psc:I

    iget v4, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->uarfcn:I

    iget-object v5, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->mcc:Ljava/lang/String;

    iget-object v6, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->mnc:Ljava/lang/String;

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->operatorNames:Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;

    iget-object v7, v0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaLong:Ljava/lang/String;

    iget-object v8, v0, Lvendor/qti/hardware/radio/qtiradio/OperatorInfo;->alphaShort:Ljava/lang/String;

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->additionalPlmns:[Ljava/lang/String;

    .line 244
    invoke-static {v0}, Lcom/qti/phone/QtiRadioUtils;->primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;->csgInfo:Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;

    .line 245
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalClosedSubscriberGroupInfo(Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;

    move-result-object v10

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/telephony/CellIdentityWcdma;-><init>(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Landroid/telephony/ClosedSubscriberGroupInfo;)V

    return-object v11
.end method

.method private static convertHalCellInfo(Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;J)Landroid/telephony/CellInfo;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 156
    :cond_0
    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->connectionStatus:I

    .line 157
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->registered:Z

    .line 158
    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->ratSpecificInfo:Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    invoke-virtual {v1}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getTag()I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v4, 0x2

    if-eq v1, v4, :cond_4

    const/4 v4, 0x3

    if-eq v1, v4, :cond_3

    const/4 v4, 0x4

    if-eq v1, v4, :cond_2

    const/4 v4, 0x5

    if-eq v1, v4, :cond_1

    return-object v0

    .line 165
    :cond_1
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->ratSpecificInfo:Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    .line 166
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getCdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;

    move-result-object p0

    .line 167
    new-instance v0, Landroid/telephony/CellInfoCdma;

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;->cellIdentityCdma:Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;

    .line 168
    invoke-static {v1}, Lcom/qti/phone/QtiRadioUtils;->convertHalCellIdentityCdma(Lvendor/qti/hardware/radio/qtiradio/CellIdentityCdma;)Landroid/telephony/CellIdentityCdma;

    move-result-object v6

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;->signalStrengthCdma:Lvendor/qti/hardware/radio/qtiradio/CdmaSignalStrength;

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoCdma;->signalStrengthEvdo:Lvendor/qti/hardware/radio/qtiradio/EvdoSignalStrength;

    .line 169
    invoke-static {v1, p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalCdmaSignalStrength(Lvendor/qti/hardware/radio/qtiradio/CdmaSignalStrength;Lvendor/qti/hardware/radio/qtiradio/EvdoSignalStrength;)Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoCdma;-><init>(IZJLandroid/telephony/CellIdentityCdma;Landroid/telephony/CellSignalStrengthCdma;)V

    return-object v0

    .line 189
    :cond_2
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->ratSpecificInfo:Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    .line 190
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getNr()Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;

    move-result-object p0

    .line 191
    new-instance v0, Landroid/telephony/CellInfoNr;

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;->cellIdentityNr:Lvendor/qti/hardware/radio/qtiradio/QtiCellIdentityNr;

    .line 192
    invoke-static {v1}, Lcom/qti/phone/QtiRadioUtils;->convertHalCellIdentityNr(Lvendor/qti/hardware/radio/qtiradio/QtiCellIdentityNr;)Landroid/telephony/CellIdentityNr;

    move-result-object v6

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoNr;->signalStrengthNr:Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;

    .line 193
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalNrSignalStrength(Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoNr;-><init>(IZJLandroid/telephony/CellIdentityNr;Landroid/telephony/CellSignalStrengthNr;)V

    return-object v0

    .line 172
    :cond_3
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->ratSpecificInfo:Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getLte()Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;

    move-result-object p0

    .line 173
    new-instance v0, Landroid/telephony/CellInfoLte;

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;->cellIdentityLte:Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;

    .line 174
    invoke-static {v1}, Lcom/qti/phone/QtiRadioUtils;->convertHalCellIdentityLte(Lvendor/qti/hardware/radio/qtiradio/CellIdentityLte;)Landroid/telephony/CellIdentityLte;

    move-result-object v6

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoLte;->signalStrengthLte:Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;

    .line 175
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalLteSignalStrength(Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;

    move-result-object v7

    new-instance v8, Landroid/telephony/CellConfigLte;

    invoke-direct {v8}, Landroid/telephony/CellConfigLte;-><init>()V

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Landroid/telephony/CellInfoLte;-><init>(IZJLandroid/telephony/CellIdentityLte;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellConfigLte;)V

    return-object v0

    .line 183
    :cond_4
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->ratSpecificInfo:Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    .line 184
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getTdscdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;

    move-result-object p0

    .line 185
    new-instance v0, Landroid/telephony/CellInfoTdscdma;

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;->cellIdentityTdscdma:Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;

    .line 186
    invoke-static {v1}, Lcom/qti/phone/QtiRadioUtils;->convertHalCellIdentityTdscdma(Lvendor/qti/hardware/radio/qtiradio/CellIdentityTdscdma;)Landroid/telephony/CellIdentityTdscdma;

    move-result-object v6

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoTdscdma;->signalStrengthTdscdma:Lvendor/qti/hardware/radio/qtiradio/TdscdmaSignalStrength;

    .line 187
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalTdscdmaSignalStrength(Lvendor/qti/hardware/radio/qtiradio/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoTdscdma;-><init>(IZJLandroid/telephony/CellIdentityTdscdma;Landroid/telephony/CellSignalStrengthTdscdma;)V

    return-object v0

    .line 177
    :cond_5
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->ratSpecificInfo:Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    .line 178
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getWcdma()Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;

    move-result-object p0

    .line 179
    new-instance v0, Landroid/telephony/CellInfoWcdma;

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;->cellIdentityWcdma:Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;

    .line 180
    invoke-static {v1}, Lcom/qti/phone/QtiRadioUtils;->convertHalCellIdentityWcdma(Lvendor/qti/hardware/radio/qtiradio/CellIdentityWcdma;)Landroid/telephony/CellIdentityWcdma;

    move-result-object v6

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoWcdma;->signalStrengthWcdma:Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;

    .line 181
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalWcdmaSignalStrength(Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoWcdma;-><init>(IZJLandroid/telephony/CellIdentityWcdma;Landroid/telephony/CellSignalStrengthWcdma;)V

    return-object v0

    .line 160
    :cond_6
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;->ratSpecificInfo:Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/QtiCellInfoRatSpecificInfo;->getGsm()Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;

    move-result-object p0

    .line 161
    new-instance v0, Landroid/telephony/CellInfoGsm;

    iget-object v1, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;->cellIdentityGsm:Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;

    .line 162
    invoke-static {v1}, Lcom/qti/phone/QtiRadioUtils;->convertHalCellIdentityGsm(Lvendor/qti/hardware/radio/qtiradio/CellIdentityGsm;)Landroid/telephony/CellIdentityGsm;

    move-result-object v6

    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/CellInfoGsm;->signalStrengthGsm:Lvendor/qti/hardware/radio/qtiradio/GsmSignalStrength;

    .line 163
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertHalGsmSignalStrength(Lvendor/qti/hardware/radio/qtiradio/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v7

    move-object v1, v0

    move-wide v4, p1

    invoke-direct/range {v1 .. v7}, Landroid/telephony/CellInfoGsm;-><init>(IZJLandroid/telephony/CellIdentityGsm;Landroid/telephony/CellSignalStrengthGsm;)V

    return-object v0
.end method

.method public static convertHalCellInfoList([Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    array-length v1, p0

    if-nez v1, :cond_0

    return-object v0

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    .line 141
    array-length v3, p0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 142
    invoke-static {v5, v1, v2}, Lcom/qti/phone/QtiRadioUtils;->convertHalCellInfo(Lvendor/qti/hardware/radio/qtiradio/QtiCellInfo;J)Landroid/telephony/CellInfo;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private static convertHalClosedSubscriberGroupInfo(Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 323
    :cond_0
    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;->csgIndication:Z

    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;->homeNodebName:Ljava/lang/String;

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/ClosedSubscriberGroupInfo;->csgIdentity:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    return-object v0
.end method

.method public static convertHalGsmSignalStrength(Lvendor/qti/hardware/radio/qtiradio/GsmSignalStrength;)Landroid/telephony/CellSignalStrengthGsm;
    .locals 3

    .line 335
    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/GsmSignalStrength;->signalStrength:I

    .line 336
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/GsmSignalStrength;->bitErrorRate:I

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/GsmSignalStrength;->timingAdvance:I

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthGsm;-><init>(III)V

    .line 338
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    .line 339
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->setDefaultValues()V

    const/4 p0, 0x0

    .line 340
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_0
    return-object v0
.end method

.method public static convertHalLteSignalStrength(Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;)Landroid/telephony/CellSignalStrengthLte;
    .locals 9

    .line 366
    new-instance v8, Landroid/telephony/CellSignalStrengthLte;

    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;->signalStrength:I

    .line 367
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssiAsuToDBm(I)I

    move-result v1

    .line 368
    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;->rsrp:I

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_0

    neg-int v0, v0

    :cond_0
    move v3, v0

    .line 369
    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;->rsrq:I

    if-eq v0, v2, :cond_1

    neg-int v0, v0

    :cond_1
    move v4, v0

    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;->rssnr:I

    .line 370
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthLte;->convertRssnrUnitFromTenDbToDB(I)I

    move-result v5

    iget v6, p0, Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;->cqiTableIndex:I

    iget v7, p0, Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;->cqi:I

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/LteSignalStrength;->timingAdvance:I

    move-object v0, v8

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, p0

    invoke-direct/range {v0 .. v7}, Landroid/telephony/CellSignalStrengthLte;-><init>(IIIIIII)V

    return-object v8
.end method

.method public static convertHalNrSignalStrength(Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;)Landroid/telephony/CellSignalStrengthNr;
    .locals 10

    .line 417
    new-instance v9, Landroid/telephony/CellSignalStrengthNr;

    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;->csiRsrp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v1

    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;->csiRsrq:I

    .line 418
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v2

    iget v3, p0, Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;->csiSinr:I

    iget v4, p0, Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;->csiCqiTableIndex:I

    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;->csiCqiReport:[B

    .line 419
    invoke-static {v0}, Lcom/qti/phone/QtiRadioUtils;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object v5

    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;->ssRsrp:I

    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v6

    iget v0, p0, Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;->ssRsrq:I

    .line 420
    invoke-static {v0}, Landroid/telephony/CellSignalStrengthNr;->flip(I)I

    move-result v7

    iget v8, p0, Lvendor/qti/hardware/radio/qtiradio/NrSignalStrength;->ssSinr:I

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/telephony/CellSignalStrengthNr;-><init>(IIIILjava/util/List;III)V

    return-object v9
.end method

.method public static convertHalTdscdmaSignalStrength(Lvendor/qti/hardware/radio/qtiradio/TdscdmaSignalStrength;)Landroid/telephony/CellSignalStrengthTdscdma;
    .locals 3

    .line 400
    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/TdscdmaSignalStrength;->signalStrength:I

    .line 401
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/TdscdmaSignalStrength;->bitErrorRate:I

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/TdscdmaSignalStrength;->rscp:I

    .line 402
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(III)V

    .line 403
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 404
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->setDefaultValues()V

    const/4 p0, 0x0

    .line 405
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_0
    return-object v0
.end method

.method public static convertHalWcdmaSignalStrength(Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;)Landroid/telephony/CellSignalStrengthWcdma;
    .locals 4

    .line 381
    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;->signalStrength:I

    .line 382
    invoke-static {v1}, Landroid/telephony/CellSignalStrength;->getRssiDbmFromAsu(I)I

    move-result v1

    iget v2, p0, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;->bitErrorRate:I

    iget v3, p0, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;->rscp:I

    .line 383
    invoke-static {v3}, Landroid/telephony/CellSignalStrength;->getRscpDbmFromAsu(I)I

    move-result v3

    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/WcdmaSignalStrength;->ecno:I

    .line 384
    invoke-static {p0}, Landroid/telephony/CellSignalStrength;->getEcNoDbFromAsu(I)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(IIII)V

    .line 385
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRssi()I

    move-result p0

    const v1, 0x7fffffff

    if-ne p0, v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result p0

    if-ne p0, v1, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->setDefaultValues()V

    const/4 p0, 0x0

    .line 387
    invoke-virtual {v0, p0, p0}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    :cond_0
    return-object v0
.end method

.method static convertQtiHalIpsecSpiToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;)Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;
    .locals 3

    .line 741
    new-instance v0, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;-><init>()V

    if-eqz p0, :cond_1

    .line 745
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;->getDiscriminator()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;->value()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;->value(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method static convertQtiHalIpv6FlowLabelToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;)Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;
    .locals 3

    .line 724
    new-instance v0, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;-><init>()V

    if-eqz p0, :cond_1

    .line 728
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;->getDiscriminator()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 734
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;->value()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;->value(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method static convertQtiHalMaybePortToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;)Landroid/hardware/radio/V1_6/MaybePort;
    .locals 3

    .line 669
    new-instance v0, Landroid/hardware/radio/V1_6/MaybePort;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/MaybePort;-><init>()V

    if-eqz p0, :cond_1

    .line 673
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->getDiscriminator()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 678
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;->range()Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;

    move-result-object p0

    .line 680
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalPortRangeToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;)Landroid/hardware/radio/V1_6/PortRange;

    move-result-object p0

    .line 681
    invoke-virtual {v0, p0}, Landroid/hardware/radio/V1_6/MaybePort;->range(Landroid/hardware/radio/V1_6/PortRange;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method static convertQtiHalPortRangeToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;)Landroid/hardware/radio/V1_6/PortRange;
    .locals 2

    .line 689
    new-instance v0, Landroid/hardware/radio/V1_6/PortRange;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/PortRange;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 696
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;->start:I

    iput v1, v0, Landroid/hardware/radio/V1_6/PortRange;->start:I

    .line 697
    iget p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/PortRange;->end:I

    iput p0, v0, Landroid/hardware/radio/V1_6/PortRange;->end:I

    return-object v0
.end method

.method static convertQtiHalQosSessionListToIRadioHal(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/hardware/radio/V1_6/QosSession;",
            ">;"
        }
    .end annotation

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 619
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 623
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;

    .line 624
    new-instance v2, Landroid/hardware/radio/V1_6/QosSession;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/QosSession;-><init>()V

    .line 627
    iget-object v3, v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosFilters:Ljava/util/ArrayList;

    .line 629
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v3, :cond_1

    .line 633
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;

    .line 634
    new-instance v6, Landroid/hardware/radio/V1_6/QosFilter;

    invoke-direct {v6}, Landroid/hardware/radio/V1_6/QosFilter;-><init>()V

    .line 636
    iget-object v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localPort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    .line 637
    invoke-static {v7}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalMaybePortToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;)Landroid/hardware/radio/V1_6/MaybePort;

    move-result-object v7

    iput-object v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->localPort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 638
    iget-object v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remotePort:Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;

    .line 639
    invoke-static {v7}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalMaybePortToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/MaybePort;)Landroid/hardware/radio/V1_6/MaybePort;

    move-result-object v7

    iput-object v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->remotePort:Landroid/hardware/radio/V1_6/MaybePort;

    .line 640
    iget-object v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->tos:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;

    .line 641
    invoke-static {v7}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalTypeOfServiceToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;)Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    move-result-object v7

    iput-object v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->tos:Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    .line 642
    iget-object v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->flowLabel:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;

    .line 643
    invoke-static {v7}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalIpv6FlowLabelToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$Ipv6FlowLabel;)Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    move-result-object v7

    iput-object v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->flowLabel:Landroid/hardware/radio/V1_6/QosFilter$Ipv6FlowLabel;

    .line 644
    iget-object v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->spi:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;

    .line 645
    invoke-static {v7}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalIpsecSpiToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$IpsecSpi;)Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    move-result-object v7

    iput-object v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->spi:Landroid/hardware/radio/V1_6/QosFilter$IpsecSpi;

    .line 646
    iget-object v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->localAddresses:Ljava/util/ArrayList;

    iput-object v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->localAddresses:Ljava/util/ArrayList;

    .line 647
    iget-object v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    iput-object v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->remoteAddresses:Ljava/util/ArrayList;

    .line 648
    iget-byte v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->protocol:B

    iput-byte v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->protocol:B

    .line 649
    iget-byte v7, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->direction:B

    iput-byte v7, v6, Landroid/hardware/radio/V1_6/QosFilter;->direction:B

    .line 650
    iget v5, v5, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter;->precedence:I

    iput v5, v6, Landroid/hardware/radio/V1_6/QosFilter;->precedence:I

    .line 652
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 656
    :cond_1
    iget-object v3, v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    invoke-static {v3}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalQosToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;)Landroid/hardware/radio/V1_6/Qos;

    move-result-object v3

    iput-object v3, v2, Landroid/hardware/radio/V1_6/QosSession;->qos:Landroid/hardware/radio/V1_6/Qos;

    .line 657
    iget v1, v1, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosSession;->qosSessionId:I

    iput v1, v2, Landroid/hardware/radio/V1_6/QosSession;->qosSessionId:I

    .line 658
    iput-object v4, v2, Landroid/hardware/radio/V1_6/QosSession;->qosFilters:Ljava/util/ArrayList;

    .line 660
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    :goto_2
    return-object v0
.end method

.method static convertQtiHalQosToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;)Landroid/hardware/radio/V1_6/Qos;
    .locals 5

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertQtiHalQosToIRadioHal, srcQos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v0, Landroid/hardware/radio/V1_6/Qos;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/Qos;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 558
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->getDiscriminator()B

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 608
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found unknown descriminator for Qos: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->getDiscriminator()B

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "case nr"

    .line 584
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->nr()Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;

    move-result-object p0

    .line 587
    new-instance v1, Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosBandwidth;-><init>()V

    .line 589
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    iget v3, v2, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    iput v3, v1, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    .line 590
    iget v2, v2, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    iput v2, v1, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    .line 592
    new-instance v2, Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/QosBandwidth;-><init>()V

    .line 594
    iget-object v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    iget v4, v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    iput v4, v2, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    .line 595
    iget v3, v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    iput v3, v2, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    .line 597
    new-instance v3, Landroid/hardware/radio/V1_6/NrQos;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/NrQos;-><init>()V

    .line 598
    iget-short v4, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->fiveQi:S

    iput-short v4, v3, Landroid/hardware/radio/V1_6/NrQos;->fiveQi:S

    .line 599
    iget-byte v4, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->qfi:B

    iput-byte v4, v3, Landroid/hardware/radio/V1_6/NrQos;->qfi:B

    .line 600
    iget-short p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/NrQos;->averagingWindowMs:S

    iput-short p0, v3, Landroid/hardware/radio/V1_6/NrQos;->averagingWindowMs:S

    .line 601
    iput-object v1, v3, Landroid/hardware/radio/V1_6/NrQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 602
    iput-object v2, v3, Landroid/hardware/radio/V1_6/NrQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 604
    invoke-virtual {v0, v3}, Landroid/hardware/radio/V1_6/Qos;->nr(Landroid/hardware/radio/V1_6/NrQos;)V

    goto :goto_0

    :cond_2
    const-string v2, "case eps"

    .line 560
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;->eps()Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;

    move-result-object p0

    .line 563
    new-instance v1, Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-direct {v1}, Landroid/hardware/radio/V1_6/QosBandwidth;-><init>()V

    .line 565
    iget-object v2, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->downlink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    iget v3, v2, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    iput v3, v1, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    .line 566
    iget v2, v2, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    iput v2, v1, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    .line 568
    new-instance v2, Landroid/hardware/radio/V1_6/QosBandwidth;

    invoke-direct {v2}, Landroid/hardware/radio/V1_6/QosBandwidth;-><init>()V

    .line 570
    iget-object v3, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->uplink:Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;

    iget v4, v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->maxBitrateKbps:I

    iput v4, v2, Landroid/hardware/radio/V1_6/QosBandwidth;->maxBitrateKbps:I

    .line 571
    iget v3, v3, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosBandwidth;->guaranteedBitrateKbps:I

    iput v3, v2, Landroid/hardware/radio/V1_6/QosBandwidth;->guaranteedBitrateKbps:I

    .line 573
    new-instance v3, Landroid/hardware/radio/V1_6/EpsQos;

    invoke-direct {v3}, Landroid/hardware/radio/V1_6/EpsQos;-><init>()V

    .line 575
    iget-short p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/EpsQos;->qci:S

    iput-short p0, v3, Landroid/hardware/radio/V1_6/EpsQos;->qci:S

    .line 576
    iput-object v1, v3, Landroid/hardware/radio/V1_6/EpsQos;->downlink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 577
    iput-object v2, v3, Landroid/hardware/radio/V1_6/EpsQos;->uplink:Landroid/hardware/radio/V1_6/QosBandwidth;

    .line 579
    invoke-virtual {v0, v3}, Landroid/hardware/radio/V1_6/Qos;->eps(Landroid/hardware/radio/V1_6/EpsQos;)V

    :goto_0
    return-object v0
.end method

.method static convertQtiHalTypeOfServiceToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;)Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;
    .locals 3

    .line 706
    new-instance v0, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;

    invoke-direct {v0}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;-><init>()V

    if-eqz p0, :cond_1

    .line 710
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->getDiscriminator()B

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosFilter$TypeOfService;->value()B

    move-result p0

    invoke-virtual {v0, p0}, Landroid/hardware/radio/V1_6/QosFilter$TypeOfService;->value(B)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static convertToHalAccessNetworkAidl(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x6

    return p0

    :pswitch_1
    const/4 p0, 0x5

    return p0

    :pswitch_2
    const/4 p0, 0x4

    return p0

    :pswitch_3
    const/4 p0, 0x3

    return p0

    :pswitch_4
    const/4 p0, 0x2

    return p0

    :pswitch_5
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToHalRadioAccessSpecifierAidl(Landroid/telephony/RadioAccessSpecifier;)Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;
    .locals 6

    .line 430
    new-instance v0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;-><init>()V

    .line 432
    new-instance v1, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;-><init>()V

    .line 434
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v2

    invoke-static {v2}, Lcom/qti/phone/QtiRadioUtils;->convertToHalAccessNetworkAidl(I)I

    move-result v2

    iput v2, v0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;->accessNetwork:I

    .line 436
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 437
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    move v4, v3

    .line 438
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 439
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getBands()[I

    move-result-object v5

    aget v5, v5, v4

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-array v2, v3, [I

    .line 444
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getRadioAccessNetwork()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    const/4 v5, 0x6

    if-eq v4, v5, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 455
    :cond_2
    invoke-virtual {v1, v2}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->setNgranBands([I)V

    goto :goto_1

    .line 452
    :cond_3
    invoke-virtual {v1, v2}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->setEutranBands([I)V

    goto :goto_1

    .line 449
    :cond_4
    invoke-virtual {v1, v2}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->setUtranBands([I)V

    goto :goto_1

    .line 446
    :cond_5
    invoke-virtual {v1, v2}, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;->setGeranBands([I)V

    .line 460
    :goto_1
    iput-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;->bands:Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifierBands;

    .line 463
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    if-eqz v1, :cond_6

    .line 464
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    .line 465
    :goto_2
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    array-length v2, v2

    if-ge v3, v2, :cond_7

    .line 466
    invoke-virtual {p0}, Landroid/telephony/RadioAccessSpecifier;->getChannels()[I

    move-result-object v2

    aget v2, v2, v3

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    new-array v1, v3, [I

    .line 471
    :cond_7
    iput-object v1, v0, Lvendor/qti/hardware/radio/qtiradio/RadioAccessSpecifier;->channels:[I

    return-object v0
.end method

.method public static convertToHalSearchTypeAidl(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    return v0
.end method

.method protected static convertToQtiNetworkTypeBitMask(I)I
    .locals 7

    const/high16 v0, 0x10000

    and-int/2addr v0, p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-long v2, v1

    const-wide/32 v4, 0x8000

    or-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    and-int/lit8 v2, p0, 0x2

    if-eqz v2, :cond_1

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_1
    and-int/lit8 v2, p0, 0x4

    if-eqz v2, :cond_2

    int-to-long v2, v0

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_2
    and-int/lit8 v2, p0, 0x10

    const-wide/16 v3, 0x8

    if-eqz v2, :cond_3

    int-to-long v5, v0

    or-long/2addr v5, v3

    long-to-int v0, v5

    :cond_3
    and-int/lit8 v2, p0, 0x20

    if-eqz v2, :cond_4

    int-to-long v5, v0

    or-long v2, v5, v3

    long-to-int v0, v2

    :cond_4
    and-int/lit8 v2, p0, 0x40

    if-eqz v2, :cond_5

    int-to-long v2, v0

    const-wide/16 v4, 0x40

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_5
    and-int/lit16 v2, p0, 0x80

    if-eqz v2, :cond_6

    int-to-long v2, v0

    const-wide/16 v4, 0x10

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_6
    and-int/lit16 v2, p0, 0x100

    if-eqz v2, :cond_7

    int-to-long v2, v0

    const-wide/16 v4, 0x20

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_7
    and-int/lit16 v2, p0, 0x1000

    if-eqz v2, :cond_8

    int-to-long v2, v0

    const-wide/16 v4, 0x800

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_8
    and-int/lit16 v2, p0, 0x2000

    if-eqz v2, :cond_9

    int-to-long v2, v0

    const-wide/16 v4, 0x2000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_9
    and-int/lit16 v2, p0, 0x400

    if-eqz v2, :cond_a

    int-to-long v2, v0

    const-wide/16 v4, 0x100

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_a
    and-int/lit16 v2, p0, 0x200

    if-eqz v2, :cond_b

    int-to-long v2, v0

    const-wide/16 v4, 0x80

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_b
    and-int/lit16 v2, p0, 0x800

    if-eqz v2, :cond_c

    int-to-long v2, v0

    const-wide/16 v4, 0x200

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_c
    const v2, 0x8000

    and-int/2addr v2, p0

    if-eqz v2, :cond_d

    int-to-long v2, v0

    const-wide/16 v4, 0x4000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_d
    and-int/lit8 v2, p0, 0x8

    if-eqz v2, :cond_e

    int-to-long v2, v0

    const-wide/16 v4, 0x4

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_e
    const/high16 v2, 0x20000

    and-int/2addr v2, p0

    if-eqz v2, :cond_f

    int-to-long v2, v0

    const-wide/32 v4, 0x10000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_f
    and-int/lit16 v2, p0, 0x4000

    if-eqz v2, :cond_10

    int-to-long v2, v0

    const-wide/16 v4, 0x1000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_10
    const/high16 v2, 0x80000

    and-int/2addr v2, p0

    if-eqz v2, :cond_11

    int-to-long v2, v0

    const-wide/32 v4, 0x40000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_11
    const/high16 v2, 0x100000

    and-int/2addr v2, p0

    if-eqz v2, :cond_12

    int-to-long v2, v0

    const-wide/32 v4, 0x80000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_12
    const/high16 v2, 0x200000

    and-int/2addr p0, v2

    if-eqz p0, :cond_13

    int-to-long v2, v0

    const-wide/32 v4, 0x100000

    or-long/2addr v2, v4

    long-to-int v0, v2

    :cond_13
    if-nez v0, :cond_14

    goto :goto_1

    :cond_14
    move v1, v0

    :goto_1
    return v1
.end method

.method static createQosParametersResultFromQtiRadioHalStruct(Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;)Lcom/qti/extphone/QosParametersResult;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 523
    :cond_0
    iget-object v0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->defaultQos:Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;

    .line 524
    invoke-static {v0}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalQosToIRadioHal(Lvendor/qti/hardware/radio/qtiradio/V2_7/Qos;)Landroid/hardware/radio/V1_6/Qos;

    move-result-object v0

    .line 525
    iget-object p0, p0, Lvendor/qti/hardware/radio/qtiradio/V2_7/QosParametersResult;->qosSessions:Ljava/util/ArrayList;

    .line 526
    invoke-static {p0}, Lcom/qti/phone/QtiRadioUtils;->convertQtiHalQosSessionListToIRadioHal(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 529
    invoke-static {v0}, Lcom/qti/extphone/Qos;->create(Landroid/hardware/radio/V1_6/Qos;)Lcom/qti/extphone/Qos;

    move-result-object v0

    .line 530
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 533
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/qti/phone/QtiRadioUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/qti/phone/QtiRadioUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 534
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/util/List;

    .line 537
    :cond_1
    new-instance p0, Lcom/qti/extphone/QosParametersResult$Builder;

    invoke-direct {p0}, Lcom/qti/extphone/QosParametersResult$Builder;-><init>()V

    .line 538
    invoke-virtual {p0, v0}, Lcom/qti/extphone/QosParametersResult$Builder;->setDefaultQos(Lcom/qti/extphone/Qos;)Lcom/qti/extphone/QosParametersResult$Builder;

    move-result-object p0

    .line 539
    invoke-virtual {p0, v1}, Lcom/qti/extphone/QosParametersResult$Builder;->setQosBearerSessions(Ljava/util/List;)Lcom/qti/extphone/QosParametersResult$Builder;

    move-result-object p0

    .line 540
    invoke-virtual {p0}, Lcom/qti/extphone/QosParametersResult$Builder;->build()Lcom/qti/extphone/QosParametersResult;

    move-result-object p0

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Created QosParametersResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_2

    const-string v1, "null"

    goto :goto_0

    :cond_2
    move-object v1, p0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QtiRadioUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private static synthetic lambda$createQosParametersResultFromQtiRadioHalStruct$0(Landroid/hardware/radio/V1_6/QosSession;)Lcom/qti/extphone/QosBearerSession;
    .locals 0

    .line 534
    invoke-static {p0}, Lcom/qti/extphone/QosBearerSession;->create(Landroid/hardware/radio/V1_6/QosSession;)Lcom/qti/extphone/QosBearerSession;

    move-result-object p0

    return-object p0
.end method

.method public static primitiveArrayToArrayList([B)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 289
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 290
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static primitiveArrayToArrayList([Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
