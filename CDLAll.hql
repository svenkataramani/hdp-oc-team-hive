use hdp_oc_team;

add jar /home/hdp_oc_team/Brickhouse/brickhouse-0.6.0.jar;

CREATE TEMPORARY FUNCTION to_json AS 'brickhouse.udf.json.ToJsonUDF';

-- source /home/hdp_oc_team/hivescripts/CDLScripts/CDLAttList.txt;

DROP TABLE IF EXISTS hdp_oc_team.cdl_all;

create table hdp_oc_team.cdl_all STORED AS textfile AS
select shopper_id,
to_json(
named_struct(
-- ${hiveconf:att_list}
'shopper_id',shopper_id,
'x_xxx_postalstatecode',x_xxx_postalstatecode,
'c_xxx_crmportfoliotypeid',c_xxx_crmportfoliotypeid,
'b_xxx_isreseller',b_xxx_isreseller,
'b_xxx_iscompany',b_xxx_iscompany,
'b_xxx_sms_optin',b_xxx_sms_optin,
'x_xxx_gender',x_xxx_gender,
's_seg_zip',s_seg_zip,
'x_xxx_global_rand',x_xxx_global_rand,
'x_xxx_daily_rand',x_xxx_daily_rand,
'c_xxx_fraudstatus',c_xxx_fraudstatus,
'c_xxx_privatelabelid',c_xxx_privatelabelid,
't_xxx_data_date',t_xxx_data_date,
't_xxx_accountcreatedate',t_xxx_accountcreatedate,
't_xxx_firstorderdate',t_xxx_firstorderdate,
't_xxx_attritiondate',t_xxx_attritiondate,
'b_xxx_isattrition_computed',b_xxx_isattrition_computed,
'c_xxx_countrycode',c_xxx_countrycode,
'c_xxx_country_name',c_xxx_country_name,
'c_xxx_region_name',c_xxx_region_name,
'i_xxx_postlc1',i_xxx_postlc1,
'i_xxx_postlc2',i_xxx_postlc2,
'i_xxx_postlc3',i_xxx_postlc3,
'i_xxx_postlc4',i_xxx_postlc4,
'i_xxx_postlc5',i_xxx_postlc5,
'i_xxx_postlc6',i_xxx_postlc6,
'i_xxx_postlc7',i_xxx_postlc7,
'i_xxx_postlc8',i_xxx_postlc8,
'b_xxx_mktg_email_optin',b_xxx_mktg_email_optin,
'b_xxx_isdonotcall',b_xxx_isdonotcall,
'i_xxx_accountagedays',i_xxx_accountagedays,
'i_xxx_accountagemon1',i_xxx_accountagemon1,
'i_xxx_accountagemon',i_xxx_accountagemon,
'i_l0e_accountagemon',i_l0e_accountagemon,
'b_bin_accountagemonold',b_bin_accountagemonold,
'b_m12_accountagemonm1',b_m12_accountagemonm1,
'b_m12_accountagemonm2',b_m12_accountagemonm2,
'b_m12_accountagemonm3',b_m12_accountagemonm3,
'b_m12_accountagemonm4',b_m12_accountagemonm4,
'b_m12_accountagemonm5',b_m12_accountagemonm5,
'b_m12_accountagemonm6',b_m12_accountagemonm6,
'b_m12_accountagemonm7',b_m12_accountagemonm7,
'b_m12_accountagemonm8',b_m12_accountagemonm8,
'b_m12_accountagemonm9',b_m12_accountagemonm9,
'b_m12_accountagemonm10',b_m12_accountagemonm10,
'b_m12_accountagemonm11',b_m12_accountagemonm11,
'b_m12_accountagemonm12',b_m12_accountagemonm12,
'i_xxx_nlm1',i_xxx_nlm1,
'i_xxx_nlm2',i_xxx_nlm2,
'i_xxx_nlm3',i_xxx_nlm3,
'i_xxx_nlm4',i_xxx_nlm4,
'i_xxx_nlm5',i_xxx_nlm5,
'i_xxx_nlm6',i_xxx_nlm6,
'i_xxx_nlm7',i_xxx_nlm7,
'i_xxx_nlm8',i_xxx_nlm8,
'i_xxx_nlm9',i_xxx_nlm9,
'i_xxx_nlm10',i_xxx_nlm10,
'i_xxx_nlm11',i_xxx_nlm11,
'i_xxx_nlm12',i_xxx_nlm12,
'i_xxx_lmo1',i_xxx_lmo1,
'i_xxx_lmo2',i_xxx_lmo2,
'i_xxx_lmo3',i_xxx_lmo3,
'i_xxx_lmo4',i_xxx_lmo4,
'i_xxx_lmo5',i_xxx_lmo5,
'i_xxx_lmo6',i_xxx_lmo6,
'i_xxx_lmo7',i_xxx_lmo7,
'i_xxx_lmo8',i_xxx_lmo8,
'i_xxx_lmo9',i_xxx_lmo9,
'i_xxx_lmo10',i_xxx_lmo10,
'i_xxx_lmo11',i_xxx_lmo11,
'i_xxx_lmo12',i_xxx_lmo12,
'c_xxx_segmentcode',c_xxx_segmentcode,
'c_xxx_segmentsourcecode',c_xxx_segmentsourcecode,
'c_xxx_lcacode',c_xxx_lcacode,
'b_xxx_us_cust',b_xxx_us_cust,
'b_xxx_china_cust',b_xxx_china_cust,
'b_xxx_india_cust',b_xxx_india_cust,
'b_xxx_northamer_cust',b_xxx_northamer_cust,
'b_xxx_asia_cust',b_xxx_asia_cust,
'b_xxx_nosegment',b_xxx_nosegment,
'b_xxx_nascent',b_xxx_nascent,
'b_xxx_webpro',b_xxx_webpro,
'b_xxx_moonlighter',b_xxx_moonlighter,
'b_xxx_domainer',b_xxx_domainer,
'b_xxx_personal',b_xxx_personal,
'b_xxx_ecommerce',b_xxx_ecommerce,
'b_xxx_smallandhungry',b_xxx_smallandhungry,
'b_xxx_upandrunning',b_xxx_upandrunning,
'b_xxx_established',b_xxx_established,
'b_xxx_growthbusinesssizeunknown',b_xxx_growthbusinesssizeunknown,
'b_xxx_nonprofit',b_xxx_nonprofit,
'b_xxx_modelv1default',b_xxx_modelv1default,
'b_xxx_modelv1activebiz',b_xxx_modelv1activebiz,
'b_xxx_modelv1ebiz',b_xxx_modelv1ebiz,
'b_xxx_modelv1webpro',b_xxx_modelv1webpro,
'b_xxx_modelv1domainer',b_xxx_modelv1domainer,
'b_xxx_unknown',b_xxx_unknown,
'b_xxx_other',b_xxx_other,
'b_xxx_activebusiness',b_xxx_activebusiness,
'b_xxx_onlinesellers',b_xxx_onlinesellers,
'b_xxx_webconsultants',b_xxx_webconsultants,
'b_xxx_adomainer',b_xxx_adomainer,
'intercept',intercept,
'i_xxx_last_ib_contact_days',i_xxx_last_ib_contact_days,
'i_xxx_last_ob_contact_days',i_xxx_last_ob_contact_days,
'i_xxx_last_c3_contact_days',i_xxx_last_c3_contact_days,
'i_xxx_ib_contacts_90d',i_xxx_ib_contacts_90d,
'i_xxx_ob_contacts_90d',i_xxx_ob_contacts_90d,
'i_xxx_c3_contacts_90d',i_xxx_c3_contacts_90d,
'i_xxx_last_bb_contact_days',i_xxx_last_bb_contact_days,
'i_xxx_last_mm_contact_days',i_xxx_last_mm_contact_days,
'i_xxx_last_email_contact_days',i_xxx_last_email_contact_days,
'i_xxx_bb_contacts_30d',i_xxx_bb_contacts_30d,
'i_xxx_bb_contacts_90d',i_xxx_bb_contacts_90d,
'i_xxx_bb_contacts_1y',i_xxx_bb_contacts_1y,
'i_xxx_mm_contacts_30d',i_xxx_mm_contacts_30d,
'i_xxx_mm_contacts_90d',i_xxx_mm_contacts_90d,
'i_xxx_mm_contacts_1y',i_xxx_mm_contacts_1y,
'i_xxx_email_contacts_30d',i_xxx_email_contacts_30d,
'i_xxx_email_contacts_90d',i_xxx_email_contacts_90d,
'i_xxx_email_contacts_1y',i_xxx_email_contacts_1y,
'i_xxx_bb_opens_90d',i_xxx_bb_opens_90d,
'i_xxx_mm_opens_90d',i_xxx_mm_opens_90d,
'i_xxx_email_opens_90d',i_xxx_email_opens_90d,
'i_xxx_bb_opens_30d',i_xxx_bb_opens_30d,
'i_xxx_mm_opens_30d',i_xxx_mm_opens_30d,
'i_xxx_email_opens_30d',i_xxx_email_opens_30d,
'd_bin_last_ib_contact_days',d_bin_last_ib_contact_days,
'd_bin_last_ob_contact_days',d_bin_last_ob_contact_days,
'd_bin_last_c3_contact_days',d_bin_last_c3_contact_days,
'd_bin_last_bb_contact_days',d_bin_last_bb_contact_days,
'd_bin_last_mm_contact_days',d_bin_last_mm_contact_days,
'd_bin_last_email_contact_days',d_bin_last_email_contact_days,
'd_bin_last_bb_open_days',d_bin_last_bb_open_days,
'd_bin_last_mm_open_days',d_bin_last_mm_open_days,
'd_bin_last_email_open_days',d_bin_last_email_open_days,
'i_xxx_email_qty_sent_90d_uce',i_xxx_email_qty_sent_90d_uce,
'i_xxx_email_qty_sent_60d_uce',i_xxx_email_qty_sent_60d_uce,
'i_xxx_email_qty_sent_30d_uce',i_xxx_email_qty_sent_30d_uce,
't_xxx_last_email_sent_date_uce',t_xxx_last_email_sent_date_uce,
'i_xxx_bb_qty_sent_90d_uce',i_xxx_bb_qty_sent_90d_uce,
'i_xxx_bb_qty_sent_60d_uce',i_xxx_bb_qty_sent_60d_uce,
'i_xxx_bb_qty_sent_30d_uce',i_xxx_bb_qty_sent_30d_uce,
't_xxx_last_bb_sent_date_uce',t_xxx_last_bb_sent_date_uce,
'i_xxx_mm_qty_sent_90d_uce',i_xxx_mm_qty_sent_90d_uce,
'i_xxx_mm_qty_sent_60d_uce',i_xxx_mm_qty_sent_60d_uce,
'i_xxx_mm_qty_sent_30d_uce',i_xxx_mm_qty_sent_30d_uce,
't_xxx_last_mm_sent_date_uce',t_xxx_last_mm_sent_date_uce,
'i_xxx_email_opens_90d_uce',i_xxx_email_opens_90d_uce,
'i_xxx_email_opens_60d_uce',i_xxx_email_opens_60d_uce,
'i_xxx_email_opens_30d_uce',i_xxx_email_opens_30d_uce,
'i_xxx_email_clicks_90d_uce',i_xxx_email_clicks_90d_uce,
'i_xxx_email_clicks_60d_uce',i_xxx_email_clicks_60d_uce,
'i_xxx_email_clicks_30d_uce',i_xxx_email_clicks_30d_uce,
't_xxx_last_email_open_date_uce',t_xxx_last_email_open_date_uce,
't_xxx_last_email_click_date_uce',t_xxx_last_email_click_date_uce,
'i_xxx_bb_opens_90d_uce',i_xxx_bb_opens_90d_uce,
'i_xxx_bb_opens_60d_uce',i_xxx_bb_opens_60d_uce,
'i_xxx_bb_opens_30d_uce',i_xxx_bb_opens_30d_uce,
'i_xxx_bb_clicks_90d_uce',i_xxx_bb_clicks_90d_uce,
'i_xxx_bb_clicks_60d_uce',i_xxx_bb_clicks_60d_uce,
'i_xxx_bb_clicks_30d_uce',i_xxx_bb_clicks_30d_uce,
't_xxx_last_bb_open_date_uce',t_xxx_last_bb_open_date_uce,
't_xxx_last_bb_click_date_uce',t_xxx_last_bb_click_date_uce,
'i_xxx_mm_opens_90d_uce',i_xxx_mm_opens_90d_uce,
'i_xxx_mm_opens_60d_uce',i_xxx_mm_opens_60d_uce,
'i_xxx_mm_opens_30d_uce',i_xxx_mm_opens_30d_uce,
'i_xxx_mm_clicks_90d_uce',i_xxx_mm_clicks_90d_uce,
'i_xxx_mm_clicks_60d_uce',i_xxx_mm_clicks_60d_uce,
'i_xxx_mm_clicks_30d_uce',i_xxx_mm_clicks_30d_uce,
't_xxx_last_mm_open_date_uce',t_xxx_last_mm_open_date_uce,
't_xxx_last_mm_click_date_uce',t_xxx_last_mm_click_date_uce,
'i_xxx_email_visit_clicks_90d_uce',i_xxx_email_visit_clicks_90d_uce,
'i_xxx_email_visit_clicks_60d_uce',i_xxx_email_visit_clicks_60d_uce,
'i_xxx_email_visit_clicks_30d_uce',i_xxx_email_visit_clicks_30d_uce,
't_xxx_last_email_visit_click_date_uce',t_xxx_last_email_visit_click_date_uce,
'i_xxx_bb_visit_clicks_90d_uce',i_xxx_bb_visit_clicks_90d_uce,
'i_xxx_bb_visit_clicks_60d_uce',i_xxx_bb_visit_clicks_60d_uce,
'i_xxx_bb_visit_clicks_30d_uce',i_xxx_bb_visit_clicks_30d_uce,
't_xxx_last_bb_visit_click_date_uce',t_xxx_last_bb_visit_click_date_uce,
'i_xxx_mm_visit_clicks_90d_uce',i_xxx_mm_visit_clicks_90d_uce,
'i_xxx_mm_visit_clicks_60d_uce',i_xxx_mm_visit_clicks_60d_uce,
'i_xxx_mm_visit_clicks_30d_uce',i_xxx_mm_visit_clicks_30d_uce,
't_xxx_last_mm_visit_click_date_uce',t_xxx_last_mm_visit_click_date_uce,
'i_xxx_email_unsub_visit_clicks_90d_uce',i_xxx_email_unsub_visit_clicks_90d_uce,
'i_xxx_email_unsub_visit_clicks_60d_uce',i_xxx_email_unsub_visit_clicks_60d_uce,
'i_xxx_email_unsub_visit_clicks_30d_uce',i_xxx_email_unsub_visit_clicks_30d_uce,
't_xxx_last_email_unsub_visit_click_date_uce',t_xxx_last_email_unsub_visit_click_date_uce,
'i_xxx_bb_unsub_visit_clicks_90d_uce',i_xxx_bb_unsub_visit_clicks_90d_uce,
'i_xxx_bb_unsub_visit_clicks_60d_uce',i_xxx_bb_unsub_visit_clicks_60d_uce,
'i_xxx_bb_unsub_visit_clicks_30d_uce',i_xxx_bb_unsub_visit_clicks_30d_uce,
't_xxx_last_bb_unsub_visit_click_date_uce',t_xxx_last_bb_unsub_visit_click_date_uce,
'i_xxx_mm_unsub_visit_clicks_90d_uce',i_xxx_mm_unsub_visit_clicks_90d_uce,
'i_xxx_mm_unsub_visit_clicks_60d_uce',i_xxx_mm_unsub_visit_clicks_60d_uce,
'i_xxx_mm_unsub_visit_clicks_30d_uce',i_xxx_mm_unsub_visit_clicks_30d_uce,
't_xxx_last_mm_unsub_visit_click_date_uce',t_xxx_last_mm_unsub_visit_click_date_uce,
'd_bin_last_email_sent_days_uce',d_bin_last_email_sent_days_uce,
'd_bin_last_bb_sent_days_uce',d_bin_last_bb_sent_days_uce,
'd_bin_last_mm_sent_days_uce',d_bin_last_mm_sent_days_uce,
'd_bin_last_email_open_days_uce',d_bin_last_email_open_days_uce,
'd_bin_last_bb_open_days_uce',d_bin_last_bb_open_days_uce,
'd_bin_last_mm_open_days_uce',d_bin_last_mm_open_days_uce,
'd_bin_last_email_click_days_uce',d_bin_last_email_click_days_uce,
'd_bin_last_bb_click_days_uce',d_bin_last_bb_click_days_uce,
'd_bin_last_mm_click_days_uce',d_bin_last_mm_click_days_uce,
'd_bin_last_email_visit_click_days_uce',d_bin_last_email_visit_click_days_uce,
'd_bin_last_bb_visit_click_days_uce',d_bin_last_bb_visit_click_days_uce,
'd_bin_last_mm_visit_click_days_uce',d_bin_last_mm_visit_click_days_uce,
'd_bin_last_email_unsub_visit_click_days_uce',d_bin_last_email_unsub_visit_click_days_uce,
'd_bin_last_bb_unsub_visit_click_days_uce',d_bin_last_bb_unsub_visit_click_days_uce,
'd_bin_last_mm_unsub_visit_click_days_uce',d_bin_last_mm_unsub_visit_click_days_uce,
'i_xxx_bought_30_appraisal',i_xxx_bought_30_appraisal,
'i_xxx_bought_30_blogcasting',i_xxx_bought_30_blogcasting,
'i_xxx_bought_30_businessregistrations',i_xxx_bought_30_businessregistrations,
'i_xxx_bought_30_cashparking',i_xxx_bought_30_cashparking,
'i_xxx_bought_30_certifieddomains',i_xxx_bought_30_certifieddomains,
'i_xxx_bought_30_cloudservers',i_xxx_bought_30_cloudservers,
'i_xxx_bought_30_cnphosting',i_xxx_bought_30_cnphosting,
'i_xxx_bought_30_dedicatedhosting',i_xxx_bought_30_dedicatedhosting,
'i_xxx_bought_30_dedicatedip',i_xxx_bought_30_dedicatedip,
'i_xxx_bought_30_domainalert',i_xxx_bought_30_domainalert,
'i_xxx_bought_30_domainbuyservices',i_xxx_bought_30_domainbuyservices,
'i_xxx_bought_30_domainbuyersclub',i_xxx_bought_30_domainbuyersclub,
'i_xxx_bought_30_domainmarketplace',i_xxx_bought_30_domainmarketplace,
'i_xxx_bought_30_domainnameauction',i_xxx_bought_30_domainnameauction,
'i_xxx_bought_30_domainnamepremium',i_xxx_bought_30_domainnamepremium,
'i_xxx_bought_30_domainnameregistration',i_xxx_bought_30_domainnameregistration,
'i_xxx_bought_30_domainnametransfer',i_xxx_bought_30_domainnametransfer,
'i_xxx_bought_30_domainownershipprotection',i_xxx_bought_30_domainownershipprotection,
'i_xxx_bought_30_domainsbyproxy',i_xxx_bought_30_domainsbyproxy,
'i_xxx_bought_30_email',i_xxx_bought_30_email,
'i_xxx_bought_30_expressemailmarketing',i_xxx_bought_30_expressemailmarketing,
'i_xxx_bought_30_faxthruemail',i_xxx_bought_30_faxthruemail,
'i_xxx_bought_30_getfound',i_xxx_bought_30_getfound,
'i_xxx_bought_30_grid',i_xxx_bought_30_grid,
'i_xxx_bought_30_hostedexchange',i_xxx_bought_30_hostedexchange,
'i_xxx_bought_30_instantpage',i_xxx_bought_30_instantpage,
'i_xxx_bought_30_managedhosting',i_xxx_bought_30_managedhosting,
'i_xxx_bought_30_mdot',i_xxx_bought_30_mdot,
'i_xxx_bought_30_merchantaccounts',i_xxx_bought_30_merchantaccounts,
'i_xxx_bought_30_miscellaneousfeesandother',i_xxx_bought_30_miscellaneousfeesandother,
'i_xxx_bought_30_msoffice365',i_xxx_bought_30_msoffice365,
'i_xxx_bought_30_onlinebookkeeping',i_xxx_bought_30_onlinebookkeeping,
'i_xxx_bought_30_onlinecalendar',i_xxx_bought_30_onlinecalendar,
'i_xxx_bought_30_onlinestorage',i_xxx_bought_30_onlinestorage,
'i_xxx_bought_30_premiumdns',i_xxx_bought_30_premiumdns,
'i_xxx_bought_30_premiumsev',i_xxx_bought_30_premiumsev,
'i_xxx_bought_30_professionalwebservices',i_xxx_bought_30_professionalwebservices,
'i_xxx_bought_30_quickshoppingcart',i_xxx_bought_30_quickshoppingcart,
'i_xxx_bought_30_reseller',i_xxx_bought_30_reseller,
'i_xxx_bought_30_searchenginevisibility',i_xxx_bought_30_searchenginevisibility,
'i_xxx_bought_30_sharedhosting',i_xxx_bought_30_sharedhosting,
'i_xxx_bought_30_siteanalytics',i_xxx_bought_30_siteanalytics,
'i_xxx_bought_30_ssl',i_xxx_bought_30_ssl,
'i_xxx_bought_30_virtualhosting',i_xxx_bought_30_virtualhosting,
'i_xxx_bought_30_websitebuilder',i_xxx_bought_30_websitebuilder,
'i_xxx_bought_30_websiteprotection',i_xxx_bought_30_websiteprotection,
'i_xxx_bought_30_wordpress',i_xxx_bought_30_wordpress,
'i_xxx_bought_30_wordpressmanagedplans',i_xxx_bought_30_wordpressmanagedplans,
't_xxx_projoindate',t_xxx_projoindate,
't_xxx_minclientadd',t_xxx_minclientadd,
't_xxx_signedat',t_xxx_signedat,
'i_xxx_webproclients',i_xxx_webproclients,
'd_xxx_visit_busreg',d_xxx_visit_busreg,
'd_xxx_visit_cal',d_xxx_visit_cal,
'd_xxx_visit_cert_dom',d_xxx_visit_cert_dom,
'd_xxx_visit_dbp',d_xxx_visit_dbp,
'd_xxx_visit_ddt',d_xxx_visit_ddt,
'd_xxx_visit_dedhost',d_xxx_visit_dedhost,
'd_xxx_visit_dom',d_xxx_visit_dom,
'd_xxx_visit_eem',d_xxx_visit_eem,
'd_xxx_visit_email',d_xxx_visit_email,
'd_xxx_visit_hex',d_xxx_visit_hex,
'd_xxx_visit_host',d_xxx_visit_host,
'd_xxx_visit_outright',d_xxx_visit_outright,
'd_xxx_visit_qsc',d_xxx_visit_qsc,
'd_xxx_visit_traf_blaz',d_xxx_visit_traf_blaz,
'd_xxx_visit_ssl',d_xxx_visit_ssl,
'd_xxx_visit_wsb',d_xxx_visit_wsb,
'd_xxx_visit_gf',d_xxx_visit_gf,
'd_xxx_visit_merch',d_xxx_visit_merch,
'd_xxx_visit_mktplc',d_xxx_visit_mktplc,
'd_xxx_visit_office',d_xxx_visit_office,
'd_xxx_visit_home',d_xxx_visit_home,
'd_xxx_site_visits_30d',d_xxx_site_visits_30d,
'd_xxx_site_visits_90d',d_xxx_site_visits_90d,
'd_xxx_visit_mya',d_xxx_visit_mya,
'd_xxx_mya_visits_30d',d_xxx_mya_visits_30d,
'd_xxx_mya_visits_90d',d_xxx_mya_visits_90d,
'd_bin_visit_busreg',d_bin_visit_busreg,
'd_bin_visit_cal',d_bin_visit_cal,
'd_bin_visit_cert_dom',d_bin_visit_cert_dom,
'd_bin_visit_dbp',d_bin_visit_dbp,
'd_bin_visit_ddt',d_bin_visit_ddt,
'd_bin_visit_dedhost',d_bin_visit_dedhost,
'd_bin_visit_dom',d_bin_visit_dom,
'd_bin_visit_eem',d_bin_visit_eem,
'd_bin_visit_email',d_bin_visit_email,
'd_bin_visit_hex',d_bin_visit_hex,
'd_bin_visit_host',d_bin_visit_host,
'd_bin_visit_outright',d_bin_visit_outright,
'd_bin_visit_qsc',d_bin_visit_qsc,
'd_bin_visit_traf_blaz',d_bin_visit_traf_blaz,
'd_bin_visit_ssl',d_bin_visit_ssl,
'd_bin_visit_wsb',d_bin_visit_wsb,
'd_bin_visit_gf',d_bin_visit_gf,
'd_bin_visit_merch',d_bin_visit_merch,
'd_bin_visit_mktplc',d_bin_visit_mktplc,
'd_bin_visit_office',d_bin_visit_office,
'd_bin_visit_home',d_bin_visit_home,
'd_bin_visit_mya',d_bin_visit_mya,
't_xxx_ncs_hasncs',t_xxx_ncs_hasncs,
't_xxx_ncs_surveydate',t_xxx_ncs_surveydate,
'b_xxx_ncs_bus_np_own',b_xxx_ncs_bus_np_own,
'b_xxx_surv_bus_np_start',b_xxx_surv_bus_np_start,
'b_xxx_ncs_bus_np_none',b_xxx_ncs_bus_np_none,
'b_xxx_ncs_bus_np_employ',b_xxx_ncs_bus_np_employ,
'b_xxx_ncs_bus_accom_food',b_xxx_ncs_bus_accom_food,
'b_xxx_ncs_bus_admin',b_xxx_ncs_bus_admin,
'b_xxx_ncs_bus_agri',b_xxx_ncs_bus_agri,
'b_xxx_ncs_bus_arts',b_xxx_ncs_bus_arts,
'b_xxx_ncs_bus_construct',b_xxx_ncs_bus_construct,
'b_xxx_ncs_bus_edu',b_xxx_ncs_bus_edu,
'b_xxx_ncs_bus_finance',b_xxx_ncs_bus_finance,
'b_xxx_ncs_bus_health',b_xxx_ncs_bus_health,
'b_xxx_ncs_bus_it',b_xxx_ncs_bus_it,
'b_xxx_ncs_bus_manuf',b_xxx_ncs_bus_manuf,
'b_xxx_ncs_bus_mine',b_xxx_ncs_bus_mine,
'b_xxx_ncs_bus_prof',b_xxx_ncs_bus_prof,
'b_xxx_ncs_bus_real_estate',b_xxx_ncs_bus_real_estate,
'b_xxx_ncs_bus_retail',b_xxx_ncs_bus_retail,
'b_xxx_ncs_bus_science',b_xxx_ncs_bus_science,
'b_xxx_ncs_bus_transpo',b_xxx_ncs_bus_transpo,
'b_xxx_ncs_bus_util',b_xxx_ncs_bus_util,
'b_xxx_ncs_bus_wholesale',b_xxx_ncs_bus_wholesale,
'b_xxx_ncs_bus_other_prod',b_xxx_ncs_bus_other_prod,
'b_xxx_ncs_bus_other_serv',b_xxx_ncs_bus_other_serv,
'b_xxx_ncs_bus_legal',b_xxx_ncs_bus_legal,
'b_xxx_ncs_bus_restaurant',b_xxx_ncs_bus_restaurant,
'b_xxx_ncs_bus_nonprofit',b_xxx_ncs_bus_nonprofit,
'b_xxx_ncs_sell_website',b_xxx_ncs_sell_website,
'b_xxx_ncs_sell_3rd_party',b_xxx_ncs_sell_3rd_party,
'd_xxx_ncs_growth',d_xxx_ncs_growth,
'd_xxx_ncs_rev',d_xxx_ncs_rev,
'd_xxx_ncs_employees',d_xxx_ncs_employees,
'b_xxx_desc_ncs_web_pro',b_xxx_desc_ncs_web_pro,
'b_xxx_ncs_desc_moonlight',b_xxx_ncs_desc_moonlight,
'b_xxx_ncs_desc_domainer',b_xxx_ncs_desc_domainer,
'b_xxx_ncs_desc_none',b_xxx_ncs_desc_none,
'd_bin_ncs_growth',d_bin_ncs_growth,
'd_bin_ncs_rev',d_bin_ncs_rev,
'i_xxx_lc1',i_xxx_lc1,
'i_xxx_lc2',i_xxx_lc2,
'i_xxx_lc3',i_xxx_lc3,
'i_xxx_lc4',i_xxx_lc4,
'i_xxx_lc5',i_xxx_lc5,
'i_xxx_lc6',i_xxx_lc6,
'i_xxx_lc7',i_xxx_lc7,
'i_xxx_lc8',i_xxx_lc8,
'i_xxx_lc9',i_xxx_lc9,
'i_xxx_lcbest',i_xxx_lcbest,
'b_xxx_used_first_sc',b_xxx_used_first_sc,
'c_xxx_first_pop',c_xxx_first_pop,
'b_xxx_first_order_viral',b_xxx_first_order_viral,
't_xxx_lastorder',t_xxx_lastorder,
'i_xxx_lt_gcr',i_xxx_lt_gcr,
'i_xxx_lt_orders',i_xxx_lt_orders,
'i_xxx_gcr_30d',i_xxx_gcr_30d,
'i_xxx_gcr_fo_30d',i_xxx_gcr_fo_30d,
'i_xxx_gcr_fy',i_xxx_gcr_fy,
'i_xxx_gcr_ly',i_xxx_gcr_ly,
'i_xxx_margin_30d',i_xxx_margin_30d,
'i_xxx_margin_fo_30d',i_xxx_margin_fo_30d,
'i_xxx_margin_fy',i_xxx_margin_fy,
'i_xxx_margin_ly',i_xxx_margin_ly,
'i_xxx_lt_margin',i_xxx_lt_margin,
'd_bin_quint_30d',d_bin_quint_30d,
't_xxx_last_new_order',t_xxx_last_new_order,
'b_xxx_first_pop_c3',b_xxx_first_pop_c3,
'd_bin_last_mm_order_days',d_bin_last_mm_order_days,
'd_bin_last_bb_order_days',d_bin_last_bb_order_days,
'd_bin_last_email_order_days',d_bin_last_email_order_days,
'i_xxx_bought_60_appraisal',i_xxx_bought_60_appraisal,
'i_xxx_bought_60_blogcasting',i_xxx_bought_60_blogcasting,
'i_xxx_bought_60_businessregistrations',i_xxx_bought_60_businessregistrations,
'i_xxx_bought_60_cashparking',i_xxx_bought_60_cashparking,
'i_xxx_bought_60_certifieddomains',i_xxx_bought_60_certifieddomains,
'i_xxx_bought_60_cloudservers',i_xxx_bought_60_cloudservers,
'i_xxx_bought_60_cnphosting',i_xxx_bought_60_cnphosting,
'i_xxx_bought_60_dedicatedhosting',i_xxx_bought_60_dedicatedhosting,
'i_xxx_bought_60_dedicatedip',i_xxx_bought_60_dedicatedip,
'i_xxx_bought_60_domainalert',i_xxx_bought_60_domainalert,
'i_xxx_bought_60_domainbuyservices',i_xxx_bought_60_domainbuyservices,
'i_xxx_bought_60_domainbuyersclub',i_xxx_bought_60_domainbuyersclub,
'i_xxx_bought_60_domainmarketplace',i_xxx_bought_60_domainmarketplace,
'i_xxx_bought_60_domainnameauction',i_xxx_bought_60_domainnameauction,
'i_xxx_bought_60_domainnamepremium',i_xxx_bought_60_domainnamepremium,
'i_xxx_bought_60_domainnameregistration',i_xxx_bought_60_domainnameregistration,
'i_xxx_bought_60_domainnametransfer',i_xxx_bought_60_domainnametransfer,
'i_xxx_bought_60_domainownershipprotection',i_xxx_bought_60_domainownershipprotection,
'i_xxx_bought_60_domainsbyproxy',i_xxx_bought_60_domainsbyproxy,
'i_xxx_bought_60_email',i_xxx_bought_60_email,
'i_xxx_bought_60_expressemailmarketing',i_xxx_bought_60_expressemailmarketing,
'i_xxx_bought_60_faxthruemail',i_xxx_bought_60_faxthruemail,
'i_xxx_bought_60_getfound',i_xxx_bought_60_getfound,
'i_xxx_bought_60_grid',i_xxx_bought_60_grid,
'i_xxx_bought_60_hostedexchange',i_xxx_bought_60_hostedexchange,
'i_xxx_bought_60_instantpage',i_xxx_bought_60_instantpage,
'i_xxx_bought_60_managedhosting',i_xxx_bought_60_managedhosting,
'i_xxx_bought_60_mdot',i_xxx_bought_60_mdot,
'i_xxx_bought_60_merchantaccounts',i_xxx_bought_60_merchantaccounts,
'i_xxx_bought_60_miscellaneousfeesandother',i_xxx_bought_60_miscellaneousfeesandother,
'i_xxx_bought_60_msoffice365',i_xxx_bought_60_msoffice365,
'i_xxx_bought_60_onlinebookkeeping',i_xxx_bought_60_onlinebookkeeping,
'i_xxx_bought_60_onlinecalendar',i_xxx_bought_60_onlinecalendar,
'i_xxx_bought_60_onlinestorage',i_xxx_bought_60_onlinestorage,
'i_xxx_bought_60_premiumdns',i_xxx_bought_60_premiumdns,
'i_xxx_bought_60_premiumsev',i_xxx_bought_60_premiumsev,
'i_xxx_bought_60_professionalwebservices',i_xxx_bought_60_professionalwebservices,
'i_xxx_bought_60_quickshoppingcart',i_xxx_bought_60_quickshoppingcart,
'i_xxx_bought_60_reseller',i_xxx_bought_60_reseller,
'i_xxx_bought_60_searchenginevisibility',i_xxx_bought_60_searchenginevisibility,
'i_xxx_bought_60_sharedhosting',i_xxx_bought_60_sharedhosting,
'i_xxx_bought_60_siteanalytics',i_xxx_bought_60_siteanalytics,
'i_xxx_bought_60_ssl',i_xxx_bought_60_ssl,
'i_xxx_bought_60_virtualhosting',i_xxx_bought_60_virtualhosting,
'i_xxx_bought_60_websitebuilder',i_xxx_bought_60_websitebuilder,
'i_xxx_bought_60_websiteprotection',i_xxx_bought_60_websiteprotection,
'i_xxx_bought_60_wordpress',i_xxx_bought_60_wordpress,
'i_xxx_bought_60_wordpressmanagedplans',i_xxx_bought_60_wordpressmanagedplans,
'i_xxx_cxl_90_appraisal',i_xxx_cxl_90_appraisal,
'i_xxx_cxl_90_blogcasting',i_xxx_cxl_90_blogcasting,
'i_xxx_cxl_90_businessregistrations',i_xxx_cxl_90_businessregistrations,
'i_xxx_cxl_90_cashparking',i_xxx_cxl_90_cashparking,
'i_xxx_cxl_90_certifieddomains',i_xxx_cxl_90_certifieddomains,
'i_xxx_cxl_90_cloudservers',i_xxx_cxl_90_cloudservers,
'i_xxx_cxl_90_cnphosting',i_xxx_cxl_90_cnphosting,
'i_xxx_cxl_90_dedicatedhosting',i_xxx_cxl_90_dedicatedhosting,
'i_xxx_cxl_90_dedicatedip',i_xxx_cxl_90_dedicatedip,
'i_xxx_cxl_90_domainalert',i_xxx_cxl_90_domainalert,
'i_xxx_cxl_90_domainbuyservices',i_xxx_cxl_90_domainbuyservices,
'i_xxx_cxl_90_domainbuyersclub',i_xxx_cxl_90_domainbuyersclub,
'i_xxx_cxl_90_domainmarketplace',i_xxx_cxl_90_domainmarketplace,
'i_xxx_cxl_90_domainnameauction',i_xxx_cxl_90_domainnameauction,
'i_xxx_cxl_90_domainnamepremium',i_xxx_cxl_90_domainnamepremium,
'i_xxx_cxl_90_domainnameregistration',i_xxx_cxl_90_domainnameregistration,
'i_xxx_cxl_90_domainnametransfer',i_xxx_cxl_90_domainnametransfer,
'i_xxx_cxl_90_domainownershipprotection',i_xxx_cxl_90_domainownershipprotection,
'i_xxx_cxl_90_domainsbyproxy',i_xxx_cxl_90_domainsbyproxy,
'i_xxx_cxl_90_email',i_xxx_cxl_90_email,
'i_xxx_cxl_90_expressemailmarketing',i_xxx_cxl_90_expressemailmarketing,
'i_xxx_cxl_90_faxthruemail',i_xxx_cxl_90_faxthruemail,
'i_xxx_cxl_90_getfound',i_xxx_cxl_90_getfound,
'i_xxx_cxl_90_grid',i_xxx_cxl_90_grid,
'i_xxx_cxl_90_hostedexchange',i_xxx_cxl_90_hostedexchange,
'i_xxx_cxl_90_instantpage',i_xxx_cxl_90_instantpage,
'i_xxx_cxl_90_managedhosting',i_xxx_cxl_90_managedhosting,
'i_xxx_cxl_90_mdot',i_xxx_cxl_90_mdot,
'i_xxx_cxl_90_merchantaccounts',i_xxx_cxl_90_merchantaccounts,
'i_xxx_cxl_90_miscellaneousfeesandother',i_xxx_cxl_90_miscellaneousfeesandother,
'i_xxx_cxl_90_msoffice365',i_xxx_cxl_90_msoffice365,
'i_xxx_cxl_90_onlinebookkeeping',i_xxx_cxl_90_onlinebookkeeping,
'i_xxx_cxl_90_onlinecalendar',i_xxx_cxl_90_onlinecalendar,
'i_xxx_cxl_90_onlinestorage',i_xxx_cxl_90_onlinestorage,
'i_xxx_cxl_90_premiumdns',i_xxx_cxl_90_premiumdns,
'i_xxx_cxl_90_premiumsev',i_xxx_cxl_90_premiumsev,
'i_xxx_cxl_90_professionalwebservices',i_xxx_cxl_90_professionalwebservices,
'i_xxx_cxl_90_quickshoppingcart',i_xxx_cxl_90_quickshoppingcart,
'i_xxx_cxl_90_reseller',i_xxx_cxl_90_reseller,
'i_xxx_cxl_90_searchenginevisibility',i_xxx_cxl_90_searchenginevisibility,
'i_xxx_cxl_90_sharedhosting',i_xxx_cxl_90_sharedhosting,
'i_xxx_cxl_90_siteanalytics',i_xxx_cxl_90_siteanalytics,
'i_xxx_cxl_90_ssl',i_xxx_cxl_90_ssl,
'i_xxx_cxl_90_virtualhosting',i_xxx_cxl_90_virtualhosting,
'i_xxx_cxl_90_websitebuilder',i_xxx_cxl_90_websitebuilder,
'i_xxx_cxl_90_websiteprotection',i_xxx_cxl_90_websiteprotection,
'i_xxx_cxl_90_wordpress',i_xxx_cxl_90_wordpress,
'i_xxx_cxl_90_wordpressmanagedplans',i_xxx_cxl_90_wordpressmanagedplans,
'i_xxx_abandon_busreg',i_xxx_abandon_busreg,
'i_xxx_abandon_cal',i_xxx_abandon_cal,
'i_xxx_abandon_cert_dom',i_xxx_abandon_cert_dom,
'i_xxx_abandon_dbp',i_xxx_abandon_dbp,
'i_xxx_abandon_ddt',i_xxx_abandon_ddt,
'i_xxx_abandon_dedhost',i_xxx_abandon_dedhost,
'i_xxx_abandon_dom',i_xxx_abandon_dom,
'i_xxx_abandon_eem',i_xxx_abandon_eem,
'i_xxx_abandon_email',i_xxx_abandon_email,
'i_xxx_abandon_hex',i_xxx_abandon_hex,
'i_xxx_abandon_host',i_xxx_abandon_host,
'i_xxx_abandon_outright',i_xxx_abandon_outright,
'i_xxx_abandon_qsc',i_xxx_abandon_qsc,
'i_xxx_abandon_traf_blaz',i_xxx_abandon_traf_blaz,
'i_xxx_abandon_ssl',i_xxx_abandon_ssl,
'i_xxx_abandon_wsb',i_xxx_abandon_wsb,
'i_xxx_abandon_gf',i_xxx_abandon_gf,
'i_xxx_abandon_merch',i_xxx_abandon_merch,
'i_xxx_abandon_mktplc',i_xxx_abandon_mktplc,
'i_xxx_abandon_office',i_xxx_abandon_office,
'd_bin_abandon_outright',d_bin_abandon_outright,
'd_bin_abandon_gf',d_bin_abandon_gf,
'd_bin_abandon_merch',d_bin_abandon_merch,
'd_bin_abandon_hex',d_bin_abandon_hex,
'd_bin_abandon_eem',d_bin_abandon_eem,
'd_bin_abandon_office',d_bin_abandon_office,
'd_bin_abandon_ddt',d_bin_abandon_ddt,
'd_bin_abandon_qsc',d_bin_abandon_qsc,
'd_bin_abandon_dedhost',d_bin_abandon_dedhost,
'd_bin_abandon_traf_blaz',d_bin_abandon_traf_blaz,
'd_bin_abandon_cert_dom',d_bin_abandon_cert_dom,
'd_bin_abandon_mktplc',d_bin_abandon_mktplc,
'd_bin_abandon_busreg',d_bin_abandon_busreg,
'd_bin_abandon_cal',d_bin_abandon_cal,
'd_bin_abandon_ssl',d_bin_abandon_ssl,
'd_bin_abandon_email',d_bin_abandon_email,
'd_bin_abandon_wsb',d_bin_abandon_wsb,
'd_bin_abandon_dbp',d_bin_abandon_dbp,
'd_bin_abandon_host',d_bin_abandon_host,
'd_bin_abandon_dom',d_bin_abandon_dom,
'd_xxx_hexboxes',d_xxx_hexboxes,
'i_xxx_bought_90_appraisal',i_xxx_bought_90_appraisal,
'i_xxx_bought_90_blogcasting',i_xxx_bought_90_blogcasting,
'i_xxx_bought_90_businessregistrations',i_xxx_bought_90_businessregistrations,
'i_xxx_bought_90_cashparking',i_xxx_bought_90_cashparking,
'i_xxx_bought_90_certifieddomains',i_xxx_bought_90_certifieddomains,
'i_xxx_bought_90_cloudservers',i_xxx_bought_90_cloudservers,
'i_xxx_bought_90_cnphosting',i_xxx_bought_90_cnphosting,
'i_xxx_bought_90_dedicatedhosting',i_xxx_bought_90_dedicatedhosting,
'i_xxx_bought_90_dedicatedip',i_xxx_bought_90_dedicatedip,
'i_xxx_bought_90_domainalert',i_xxx_bought_90_domainalert,
'i_xxx_bought_90_domainbuyservices',i_xxx_bought_90_domainbuyservices,
'i_xxx_bought_90_domainbuyersclub',i_xxx_bought_90_domainbuyersclub,
'i_xxx_bought_90_domainmarketplace',i_xxx_bought_90_domainmarketplace,
'i_xxx_bought_90_domainnameauction',i_xxx_bought_90_domainnameauction,
'i_xxx_bought_90_domainnamepremium',i_xxx_bought_90_domainnamepremium,
'i_xxx_bought_90_domainnameregistration',i_xxx_bought_90_domainnameregistration,
'i_xxx_bought_90_domainnametransfer',i_xxx_bought_90_domainnametransfer,
'i_xxx_bought_90_domainownershipprotection',i_xxx_bought_90_domainownershipprotection,
'i_xxx_bought_90_domainsbyproxy',i_xxx_bought_90_domainsbyproxy,
'i_xxx_bought_90_email',i_xxx_bought_90_email,
'i_xxx_bought_90_expressemailmarketing',i_xxx_bought_90_expressemailmarketing,
'i_xxx_bought_90_faxthruemail',i_xxx_bought_90_faxthruemail,
'i_xxx_bought_90_getfound',i_xxx_bought_90_getfound,
'i_xxx_bought_90_grid',i_xxx_bought_90_grid,
'i_xxx_bought_90_hostedexchange',i_xxx_bought_90_hostedexchange,
'i_xxx_bought_90_instantpage',i_xxx_bought_90_instantpage,
'i_xxx_bought_90_managedhosting',i_xxx_bought_90_managedhosting,
'i_xxx_bought_90_mdot',i_xxx_bought_90_mdot,
'i_xxx_bought_90_merchantaccounts',i_xxx_bought_90_merchantaccounts,
'i_xxx_bought_90_miscellaneousfeesandother',i_xxx_bought_90_miscellaneousfeesandother,
'i_xxx_bought_90_msoffice365',i_xxx_bought_90_msoffice365,
'i_xxx_bought_90_onlinebookkeeping',i_xxx_bought_90_onlinebookkeeping,
'i_xxx_bought_90_onlinecalendar',i_xxx_bought_90_onlinecalendar,
'i_xxx_bought_90_onlinestorage',i_xxx_bought_90_onlinestorage,
'i_xxx_bought_90_premiumdns',i_xxx_bought_90_premiumdns,
'i_xxx_bought_90_premiumsev',i_xxx_bought_90_premiumsev,
'i_xxx_bought_90_professionalwebservices',i_xxx_bought_90_professionalwebservices,
'i_xxx_bought_90_quickshoppingcart',i_xxx_bought_90_quickshoppingcart,
'i_xxx_bought_90_reseller',i_xxx_bought_90_reseller,
'i_xxx_bought_90_searchenginevisibility',i_xxx_bought_90_searchenginevisibility,
'i_xxx_bought_90_sharedhosting',i_xxx_bought_90_sharedhosting,
'i_xxx_bought_90_siteanalytics',i_xxx_bought_90_siteanalytics,
'i_xxx_bought_90_ssl',i_xxx_bought_90_ssl,
'i_xxx_bought_90_virtualhosting',i_xxx_bought_90_virtualhosting,
'i_xxx_bought_90_websitebuilder',i_xxx_bought_90_websitebuilder,
'i_xxx_bought_90_websiteprotection',i_xxx_bought_90_websiteprotection,
'i_xxx_bought_90_wordpress',i_xxx_bought_90_wordpress,
'i_xxx_bought_90_wordpressmanagedplans',i_xxx_bought_90_wordpressmanagedplans,
'i_xxx_own_appraisal',i_xxx_own_appraisal,
'i_xxx_own_blogcasting',i_xxx_own_blogcasting,
'i_xxx_own_businessregistrations',i_xxx_own_businessregistrations,
'i_xxx_own_cashparking',i_xxx_own_cashparking,
'i_xxx_own_certifieddomains',i_xxx_own_certifieddomains,
'i_xxx_own_cloudservers',i_xxx_own_cloudservers,
'i_xxx_own_cnphosting',i_xxx_own_cnphosting,
'i_xxx_own_dedicatedhosting',i_xxx_own_dedicatedhosting,
'i_xxx_own_dedicatedip',i_xxx_own_dedicatedip,
'i_xxx_own_domainalert',i_xxx_own_domainalert,
'i_xxx_own_domainbuyservices',i_xxx_own_domainbuyservices,
'i_xxx_own_domainbuyersclub',i_xxx_own_domainbuyersclub,
'i_xxx_own_domainmarketplace',i_xxx_own_domainmarketplace,
'i_xxx_own_domainnameauction',i_xxx_own_domainnameauction,
'i_xxx_own_domainnamepremium',i_xxx_own_domainnamepremium,
'i_xxx_own_domainnameregistration',i_xxx_own_domainnameregistration,
'i_xxx_own_domainnametransfer',i_xxx_own_domainnametransfer,
'i_xxx_own_domainownershipprotection',i_xxx_own_domainownershipprotection,
'i_xxx_own_domainsbyproxy',i_xxx_own_domainsbyproxy,
'i_xxx_own_email',i_xxx_own_email,
'i_xxx_own_expressemailmarketing',i_xxx_own_expressemailmarketing,
'i_xxx_own_faxthruemail',i_xxx_own_faxthruemail,
'i_xxx_own_getfound',i_xxx_own_getfound,
'i_xxx_own_grid',i_xxx_own_grid,
'i_xxx_own_hostedexchange',i_xxx_own_hostedexchange,
'i_xxx_own_instantpage',i_xxx_own_instantpage,
'i_xxx_own_managedhosting',i_xxx_own_managedhosting,
'i_xxx_own_mdot',i_xxx_own_mdot,
'i_xxx_own_merchantaccounts',i_xxx_own_merchantaccounts,
'i_xxx_own_miscellaneousfeesandother',i_xxx_own_miscellaneousfeesandother,
'i_xxx_own_msoffice365',i_xxx_own_msoffice365,
'i_xxx_own_onlinebookkeeping',i_xxx_own_onlinebookkeeping,
'i_xxx_own_onlinecalendar',i_xxx_own_onlinecalendar,
'i_xxx_own_onlinestorage',i_xxx_own_onlinestorage,
'i_xxx_own_premiumdns',i_xxx_own_premiumdns,
'i_xxx_own_premiumsev',i_xxx_own_premiumsev,
'i_xxx_own_professionalwebservices',i_xxx_own_professionalwebservices,
'i_xxx_own_quickshoppingcart',i_xxx_own_quickshoppingcart,
'i_xxx_own_reseller',i_xxx_own_reseller,
'i_xxx_own_searchenginevisibility',i_xxx_own_searchenginevisibility,
'i_xxx_own_sharedhosting',i_xxx_own_sharedhosting,
'i_xxx_own_siteanalytics',i_xxx_own_siteanalytics,
'i_xxx_own_ssl',i_xxx_own_ssl,
'i_xxx_own_virtualhosting',i_xxx_own_virtualhosting,
'i_xxx_own_websitebuilder',i_xxx_own_websitebuilder,
'i_xxx_own_websiteprotection',i_xxx_own_websiteprotection,
'i_xxx_own_wordpress',i_xxx_own_wordpress,
'i_xxx_own_wordpressmanagedplans',i_xxx_own_wordpressmanagedplans,
'i_xxx_cxl_60_appraisal',i_xxx_cxl_60_appraisal,
'i_xxx_cxl_60_blogcasting',i_xxx_cxl_60_blogcasting,
'i_xxx_cxl_60_businessregistrations',i_xxx_cxl_60_businessregistrations,
'i_xxx_cxl_60_cashparking',i_xxx_cxl_60_cashparking,
'i_xxx_cxl_60_certifieddomains',i_xxx_cxl_60_certifieddomains,
'i_xxx_cxl_60_cloudservers',i_xxx_cxl_60_cloudservers,
'i_xxx_cxl_60_cnphosting',i_xxx_cxl_60_cnphosting,
'i_xxx_cxl_60_dedicatedhosting',i_xxx_cxl_60_dedicatedhosting,
'i_xxx_cxl_60_dedicatedip',i_xxx_cxl_60_dedicatedip,
'i_xxx_cxl_60_domainalert',i_xxx_cxl_60_domainalert,
'i_xxx_cxl_60_domainbuyservices',i_xxx_cxl_60_domainbuyservices,
'i_xxx_cxl_60_domainbuyersclub',i_xxx_cxl_60_domainbuyersclub,
'i_xxx_cxl_60_domainmarketplace',i_xxx_cxl_60_domainmarketplace,
'i_xxx_cxl_60_domainnameauction',i_xxx_cxl_60_domainnameauction,
'i_xxx_cxl_60_domainnamepremium',i_xxx_cxl_60_domainnamepremium,
'i_xxx_cxl_60_domainnameregistration',i_xxx_cxl_60_domainnameregistration,
'i_xxx_cxl_60_domainnametransfer',i_xxx_cxl_60_domainnametransfer,
'i_xxx_cxl_60_domainownershipprotection',i_xxx_cxl_60_domainownershipprotection,
'i_xxx_cxl_60_domainsbyproxy',i_xxx_cxl_60_domainsbyproxy,
'i_xxx_cxl_60_email',i_xxx_cxl_60_email,
'i_xxx_cxl_60_expressemailmarketing',i_xxx_cxl_60_expressemailmarketing,
'i_xxx_cxl_60_faxthruemail',i_xxx_cxl_60_faxthruemail,
'i_xxx_cxl_60_getfound',i_xxx_cxl_60_getfound,
'i_xxx_cxl_60_grid',i_xxx_cxl_60_grid,
'i_xxx_cxl_60_hostedexchange',i_xxx_cxl_60_hostedexchange,
'i_xxx_cxl_60_instantpage',i_xxx_cxl_60_instantpage,
'i_xxx_cxl_60_managedhosting',i_xxx_cxl_60_managedhosting,
'i_xxx_cxl_60_mdot',i_xxx_cxl_60_mdot,
'i_xxx_cxl_60_merchantaccounts',i_xxx_cxl_60_merchantaccounts,
'i_xxx_cxl_60_miscellaneousfeesandother',i_xxx_cxl_60_miscellaneousfeesandother,
'i_xxx_cxl_60_msoffice365',i_xxx_cxl_60_msoffice365,
'i_xxx_cxl_60_onlinebookkeeping',i_xxx_cxl_60_onlinebookkeeping,
'i_xxx_cxl_60_onlinecalendar',i_xxx_cxl_60_onlinecalendar,
'i_xxx_cxl_60_onlinestorage',i_xxx_cxl_60_onlinestorage,
'i_xxx_cxl_60_premiumdns',i_xxx_cxl_60_premiumdns,
'i_xxx_cxl_60_premiumsev',i_xxx_cxl_60_premiumsev,
'i_xxx_cxl_60_professionalwebservices',i_xxx_cxl_60_professionalwebservices,
'i_xxx_cxl_60_quickshoppingcart',i_xxx_cxl_60_quickshoppingcart,
'i_xxx_cxl_60_reseller',i_xxx_cxl_60_reseller,
'i_xxx_cxl_60_searchenginevisibility',i_xxx_cxl_60_searchenginevisibility,
'i_xxx_cxl_60_sharedhosting',i_xxx_cxl_60_sharedhosting,
'i_xxx_cxl_60_siteanalytics',i_xxx_cxl_60_siteanalytics,
'i_xxx_cxl_60_ssl',i_xxx_cxl_60_ssl,
'i_xxx_cxl_60_virtualhosting',i_xxx_cxl_60_virtualhosting,
'i_xxx_cxl_60_websitebuilder',i_xxx_cxl_60_websitebuilder,
'i_xxx_cxl_60_websiteprotection',i_xxx_cxl_60_websiteprotection,
'i_xxx_cxl_60_wordpress',i_xxx_cxl_60_wordpress,
'i_xxx_cxl_60_wordpressmanagedplans',i_xxx_cxl_60_wordpressmanagedplans,
'i_xxx_domains',i_xxx_domains,
'i_xxx_domains_non_info',i_xxx_domains_non_info,
'i_xxx_tlds',i_xxx_tlds,
'i_xxx_gtlds',i_xxx_gtlds,
'i_xxx_gtlds_non_info',i_xxx_gtlds_non_info,
'i_xxx_max_domain_age',i_xxx_max_domain_age,
'i_xxx_min_domain_age',i_xxx_min_domain_age,
'i_xxx_cxl_30_appraisal',i_xxx_cxl_30_appraisal,
'i_xxx_cxl_30_blogcasting',i_xxx_cxl_30_blogcasting,
'i_xxx_cxl_30_businessregistrations',i_xxx_cxl_30_businessregistrations,
'i_xxx_cxl_30_cashparking',i_xxx_cxl_30_cashparking,
'i_xxx_cxl_30_certifieddomains',i_xxx_cxl_30_certifieddomains,
'i_xxx_cxl_30_cloudservers',i_xxx_cxl_30_cloudservers,
'i_xxx_cxl_30_cnphosting',i_xxx_cxl_30_cnphosting,
'i_xxx_cxl_30_dedicatedhosting',i_xxx_cxl_30_dedicatedhosting,
'i_xxx_cxl_30_dedicatedip',i_xxx_cxl_30_dedicatedip,
'i_xxx_cxl_30_domainalert',i_xxx_cxl_30_domainalert,
'i_xxx_cxl_30_domainbuyservices',i_xxx_cxl_30_domainbuyservices,
'i_xxx_cxl_30_domainbuyersclub',i_xxx_cxl_30_domainbuyersclub,
'i_xxx_cxl_30_domainmarketplace',i_xxx_cxl_30_domainmarketplace,
'i_xxx_cxl_30_domainnameauction',i_xxx_cxl_30_domainnameauction,
'i_xxx_cxl_30_domainnamepremium',i_xxx_cxl_30_domainnamepremium,
'i_xxx_cxl_30_domainnameregistration',i_xxx_cxl_30_domainnameregistration,
'i_xxx_cxl_30_domainnametransfer',i_xxx_cxl_30_domainnametransfer,
'i_xxx_cxl_30_domainownershipprotection',i_xxx_cxl_30_domainownershipprotection,
'i_xxx_cxl_30_domainsbyproxy',i_xxx_cxl_30_domainsbyproxy,
'i_xxx_cxl_30_email',i_xxx_cxl_30_email,
'i_xxx_cxl_30_expressemailmarketing',i_xxx_cxl_30_expressemailmarketing,
'i_xxx_cxl_30_faxthruemail',i_xxx_cxl_30_faxthruemail,
'i_xxx_cxl_30_getfound',i_xxx_cxl_30_getfound,
'i_xxx_cxl_30_grid',i_xxx_cxl_30_grid,
'i_xxx_cxl_30_hostedexchange',i_xxx_cxl_30_hostedexchange,
'i_xxx_cxl_30_instantpage',i_xxx_cxl_30_instantpage,
'i_xxx_cxl_30_managedhosting',i_xxx_cxl_30_managedhosting,
'i_xxx_cxl_30_mdot',i_xxx_cxl_30_mdot,
'i_xxx_cxl_30_merchantaccounts',i_xxx_cxl_30_merchantaccounts,
'i_xxx_cxl_30_miscellaneousfeesandother',i_xxx_cxl_30_miscellaneousfeesandother,
'i_xxx_cxl_30_msoffice365',i_xxx_cxl_30_msoffice365,
'i_xxx_cxl_30_onlinebookkeeping',i_xxx_cxl_30_onlinebookkeeping,
'i_xxx_cxl_30_onlinecalendar',i_xxx_cxl_30_onlinecalendar,
'i_xxx_cxl_30_onlinestorage',i_xxx_cxl_30_onlinestorage,
'i_xxx_cxl_30_premiumdns',i_xxx_cxl_30_premiumdns,
'i_xxx_cxl_30_premiumsev',i_xxx_cxl_30_premiumsev,
'i_xxx_cxl_30_professionalwebservices',i_xxx_cxl_30_professionalwebservices,
'i_xxx_cxl_30_quickshoppingcart',i_xxx_cxl_30_quickshoppingcart,
'i_xxx_cxl_30_reseller',i_xxx_cxl_30_reseller,
'i_xxx_cxl_30_searchenginevisibility',i_xxx_cxl_30_searchenginevisibility,
'i_xxx_cxl_30_sharedhosting',i_xxx_cxl_30_sharedhosting,
'i_xxx_cxl_30_siteanalytics',i_xxx_cxl_30_siteanalytics,
'i_xxx_cxl_30_ssl',i_xxx_cxl_30_ssl,
'i_xxx_cxl_30_virtualhosting',i_xxx_cxl_30_virtualhosting,
'i_xxx_cxl_30_websitebuilder',i_xxx_cxl_30_websitebuilder,
'i_xxx_cxl_30_websiteprotection',i_xxx_cxl_30_websiteprotection,
'i_xxx_cxl_30_wordpress',i_xxx_cxl_30_wordpress,
'i_xxx_cxl_30_wordpressmanagedplans',i_xxx_cxl_30_wordpressmanagedplans,
't_xxx_last_failed_billing_date',t_xxx_last_failed_billing_date,
'b_xxx_failed_billing_1d',b_xxx_failed_billing_1d,
'b_xxx_failed_billing_30d',b_xxx_failed_billing_30d,
'b_xxx_failed_billing_60d',b_xxx_failed_billing_60d,
'b_xxx_failed_billing_90d',b_xxx_failed_billing_90d,
't_xxx_lasttrannotapproveddt',t_xxx_lasttrannotapproveddt,
't_xxx_lastaccountvisit',cast(t_xxx_lastaccountvisit as string),
'i_xxx_accountvisits',i_xxx_accountvisits,
'd_xxx_workspaceboxes',d_xxx_workspaceboxes,
'd_xxx_dnb_employeestotal',d_xxx_dnb_employeestotal,
'b_xxx_infogrpemp10to499',b_xxx_infogrpemp10to499,
'b_xxx_infogrpemp10to499',b_xxx_infogrpemp10to499,
'b_xxx_ismidmarket',b_xxx_ismidmarket,
'ols_ft_strt_dt', cast(ols_ft_strt_dt as string),
'ols_ft_live_flg',ols_ft_live_flg
)
) as cdl_json
from dbmarketing.cdl;