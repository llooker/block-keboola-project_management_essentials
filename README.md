# Project Management Essentials

## Keboola Blocks Intro (Scaffold Prerequisite)
Looker Blocks powered by Keboola are designed to work in tandem with corresponding Keboola Scaffolds in the Keboola Connection platform. Similar to Blocks in nature, Keboola Scaffolds are templatized use-cases that can be instantly deployed into the Keboola platform, providing the whole data management and processing chain required to populate the Looker dashboards.

## Block Overview
This Block connects to data from Keboola “Project Management Essentials - Looker” Scaffold into Looker. Its purpose is to provide quick out-of-the-box end to end integration and functionality to be used either stand-alone or to be combined with other data. It focuses on projects, tasks and their progress over the time, including productivity of the users. In order to set up the Keboola data feed, please contact us: [here](https://get.keboola.com/lookerblocks?block=finance_essentials).

## Data and Block Structure
This block is built above data obtained from Asana API, so it’s available to almost every customer using Asana for project management (it's possible to prepare data in Keboola Connection from other system as well). Objects used for the Scaffold and Block to work are:

*  Projects
*  Tasks
*  Users
*  Custom Fields
*  Sections

The **Keboola Scaffold** will set up everything for you - from Asana data extraction to data transformation, to setting up the Snowflake database with necessary tables for the LookML. All you need to do is set up the connection to the database in Looker and add it to the Looker model.

In case you want to enrich your Looker model and dashboards with other fields or objects from your Asana instance, you can modify the whole data extraction and processing directly in Keboola Connection.

## Customization
The LookML contents of this block can also be modified/extended to best fit all use cases.
This block utilizes Refinement files for customization. For more information on using refinements to customize marketplace blocks, please see [this documentation](https://docs.looker.com/data-modeling/marketplace/customize-blocks).
