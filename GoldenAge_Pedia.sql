--------------------------------------------------------------
-- CivilopediaPageGroups
--------------------------------------------------------------
INSERT OR REPLACE INTO CivilopediaPageGroups
		(SectionID,		PageGroupId,	SortIndex,	VisibleIfEmpty,	Tooltip,	Name)
VALUES	('CONCEPTS',	'GOLDENAGE',	4,			0,				'',			'LOC_PEDIA_CONCEPTS_PAGEGROUP_GOLDENAGE_NAME');
--------------------------------------------------------------
-- CivilopediaPages
--------------------------------------------------------------
INSERT OR REPLACE INTO CivilopediaPages
		(SectionId,		PageId,								    PageGroupId,	SortIndex,	PageLayoutId,		                Tooltip,	Name)
VALUES	('CONCEPTS',	'GOLDENAGE_INTRODUCTION',			    'GOLDENAGE',	1,			'Simple',			                '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_INTRODUCTION_CHAPTER_CONTENT_TITLE'),
        ('CONCEPTS',	'GOLDENAGE_CITYPOPULATION',			    'GOLDENAGE',	2,			'Citypopulation',			        '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_CITYPOPULATION_CHAPTER_BASE_TITLE'),
		('CONCEPTS',	'GOLDENAGE_CITYPLANNING',		        'GOLDENAGE',	3,			'Cityplanning',	                    '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_CITYPLANNING_CHAPTER_BASE_TITLE'),
		('CONCEPTS',	'GOLDENAGE_CITYDEVELOPMENT',		    'GOLDENAGE',	4,			'Citydevelopment',	                '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_CITYDEVELOPMENT_CHAPTER_BASE_TITLE'),
		('CONCEPTS',	'GOLDENAGE_HUMANITIES',		            'GOLDENAGE',	5,			'Humanities',	                    '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_HUMANITIES_CHAPTER_BASE_TITLE'),
		('CONCEPTS',	'GOLDENAGE_WARFARE',		            'GOLDENAGE',	6,			'Warfare',	                        '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_WARFARE_CHAPTER_BASE_TITLE'),	
		('CONCEPTS',	'GOLDENAGE_DIPLOMACY',		            'GOLDENAGE',	7,			'Diplomacy',	                    '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_DIPLOMACY_CHAPTER_BASE_TITLE'),	
        ('CONCEPTS',	'GOLDENAGE_NATURAL',	                'GOLDENAGE',	8,			'Nature',	                        '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_NATURAL_CHAPTER_BASE_TITLE'),
        ('CONCEPTS',	'GOLDENAGE_CITYSTATE',		            'GOLDENAGE',	9,			'Simple',	                        '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_CITYSTATE_CHAPTER_CONTENT_TITLE'),		
		('CONCEPTS',	'GOLDENAGE_OTHER',		                'GOLDENAGE',	10,			'Other',	                        '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_OTHER_CHAPTER_BASE_TITLE'),
		('CONCEPTS',	'GOLDENAGE_MODE',	                    'GOLDENAGE',	11,			'Mode',	                            '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_MODE_CHAPTER_BASE_TITLE'),	
		('CONCEPTS',	'GOLDENAGE_APPEAL',		                'GOLDENAGE',	12,			'Simple',	                        '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_APPEAL_CHAPTER_CONTENT_TITLE'),
		('CONCEPTS',	'GOLDENAGE_RISE_FALL',		            'GOLDENAGE',	13,			'Simple',	                        '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_RISE_FALL_CHAPTER_CONTENT_TITLE'),
		('CONCEPTS',	'GOLDENAGE_REGION',		                'GOLDENAGE',	14,			'Simple',	                        '',			'LOC_PEDIA_CONCEPTS_PAGE_GOLDENAGE_REGION_CHAPTER_CONTENT_TITLE');
--------------------------------------------------------------
--CivilopediaPageLayouts
--------------------------------------------------------------
INSERT OR REPLACE INTO CivilopediaPageLayouts
(PageLayoutId,		ScriptTemplate) VALUES	
('Citypopulation',	'Simple'),
('Cityplanning',	'Simple'),
('Citydevelopment',	'Simple'),
('Humanities',	    'Simple'),
('Warfare',	        'Simple'),
('Diplomacy',	    'Simple'),
('Nature',	        'Simple'),
('Mode',	        'Simple'),
('Other',	        'Simple');
--------------------------------------------------------------
-- CivilopediaPageLayoutChapters
--------------------------------------------------------------
INSERT OR REPLACE INTO CivilopediaPageLayoutChapters
(PageLayoutId,		ChapterId,		SortIndex)	VALUES	
('Citypopulation',	'BASE',		    10),
('Citypopulation',	'BONUS',		20),
('Citypopulation',	'GUILDHALL',	30),
('Citypopulation',	'PUNISHMENT',	40),
('Citypopulation',	'OTHER',	    50),
('Cityplanning',	'BASE',		           10),
('Cityplanning',	'DISTRICTS',		   20),
('Cityplanning',	'DISTRICT_ADJACENCY',  30),
('Cityplanning',	'IMPROVEMENTS',        40),
('Cityplanning',	'ROUTES',        	   50),
('Citydevelopment',	'BASE',		           10),
('Citydevelopment',	'BUILDINGS',		   20),
('Citydevelopment',	'PROJECTS',	           30),
('Citydevelopment',	'SPECIALISTS',	       40),
('Citydevelopment',	'WONDERS',	           50),
('Humanities',	    'BASE',		    10),
('Humanities',	    'GOVERNMENTS',	20),
('Humanities',	    'POLICIES',	    30),
('Humanities',	    'BELIEFS',	    40),
('Humanities',	    'GOVERNORS',	50),
('Warfare',	        'BASE',	        10),
('Warfare',	        'COUNTER',	    20),
('Warfare',	        'SIGHT',	    30),
('Warfare',	        'PROMOTION',	40),
('Warfare',	        'OTHERS',	    50),
('Diplomacy',	    'BASE',	        10),
('Diplomacy',	    'AI',	        20),
('Diplomacy',	    'DIPLOMACY',	30),
('Nature',	        'BASE',	                10),
('Nature',	        'TERRAINSFEATURES',	    20),
('Nature',	        'RESOURCES',	        30),
('Nature',	        'WONDERS',	            40),
('Nature',	        'CLIMATE',	    		50),
('Nature',	        'MAP',	    			60),
('Mode',	        'BASE',	        10),
('Mode',	        'APOCALYPSE',	20),
('Mode',	        'SOCIETY',	    30),
('Mode',	        'DYNAMIC',	    40),
('Mode',	        'HEROES',	    50),
('Mode',	        'MONOPOLIES',	60),
('Mode',	        'BARBARIAN',	70),
('Mode',	        'ZOMBIE',	    80),
('Other',	        'BASE',	        10),
('Other',	        'PACE',	        20);